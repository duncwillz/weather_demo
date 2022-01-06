import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/core/data/database/db_config.dart';
import 'package:weather_app/core/presentation/domain/ui_exceptions.dart';
import 'package:weather_app/core/presentation/state/provider_state.dart';
import 'package:weather_app/feature/favourite_weather/domain/usecases/favourite_usecases.dart';

import 'favourite_state.dart';

class FavouriteProvider
    with ChangeNotifier, ProviderState<FavouriteStatePayload> {
  FavouriteUseCases? _favouriteUseCases;
  FavouriteProvider(this._favouriteUseCases) {
    initialPayload = const FavouriteStatePayload(isFavourite: false);
  }

  void _setState(
      {loading, isReady = false, hasError = false, errorMsg = '', payload}) {
    update(
        loading: loading,
        hasErr: hasError,
        errorMsg: errorMsg,
        ready: isReady,
        statePayload: payload);
    notifyListeners();
  }

  void toggleFavourite(FavouriteWeatherModel favourite, bool status) {
    !status ? markAsFavourite(favourite) : unMarkAsFavourite(favourite);
  }

  Future markAsFavourite(FavouriteWeatherModel favourite) async {
    _setState(loading: true);

    Either<UIError, List<FavouriteWeatherModel>> response =
        await _favouriteUseCases!.markAsFavourite(favourite);

    response.fold(
      (l) {
        _setState(
          loading: false,
          hasError: true,
          errorMsg: l.message,
        );
      },
      (r) {
        _setState(
          loading: false,
          payload: payload.copyWith(
              favourites: r, isFavourite: r.contains(favourite)),
        );
      },
    );
  }

  Future unMarkAsFavourite(FavouriteWeatherModel favourite) async {
    _setState(loading: true);

    Either<UIError, List<FavouriteWeatherModel>> response =
        await _favouriteUseCases!.unMarkAsFavourite(favourite);

    response.fold(
      (l) {
        _setState(
          loading: false,
          hasError: true,
          errorMsg: l.message,
        );
      },
      (r) {
        _setState(
          loading: false,
          payload: payload.copyWith(
              favourites: r, isFavourite: r.contains(favourite)),
        );
      },
    );
  }

  Future getAllFavourite() async {
    _setState(loading: true);

    Either<UIError, List<FavouriteWeatherModel>> response =
        await _favouriteUseCases!.getAllFavourites();

    response.fold(
      (l) {
        _setState(
          loading: false,
          hasError: true,
          errorMsg: l.message,
        );
      },
      (r) {
        _setState(
          loading: false,
          payload:
              payload.copyWith(favourites: r, isFavourite: payload.isFavourite),
        );
      },
    );
  }
}
