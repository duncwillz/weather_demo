import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/core/data/database/db_config.dart';

part 'favourite_state.freezed.dart';

@freezed
abstract class FavouriteStatePayload with _$FavouriteStatePayload {
  const factory FavouriteStatePayload(
      {bool? isFavourite,
      List<FavouriteWeatherModel>? favourites}) = _FavouriteStatePayload;
}
