import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/core/data/database/db_config.dart';
import 'package:weather_app/core/presentation/domain/ui_exceptions.dart';
import 'package:weather_app/core/presentation/state/provider_state.dart';
import 'package:weather_app/feature/search_weather/domain/usecases/search_usecases.dart';

import 'search_state.dart';

class SearchProvider with ChangeNotifier, ProviderState<SearchStatePayload> {
  SearchUseCases? _searchUseCases;
  SearchProvider(this._searchUseCases) {
    initialPayload = SearchStatePayload();
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

  void resetState() {
    _setState(loading: false, payload: SearchStatePayload());
  }

  Future searchWeather({String? cityName}) async {
    _setState(loading: true);

    Either<UIError, FavouriteWeatherModel> response =
        await _searchUseCases!.searchByCity(cityName);

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
          payload: payload.copyWith(weather: r),
        );
      },
    );
  }
}
