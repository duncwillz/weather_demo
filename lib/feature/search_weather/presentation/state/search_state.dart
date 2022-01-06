import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/core/data/database/db_config.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchStatePayload with _$SearchStatePayload {
  const factory SearchStatePayload({FavouriteWeatherModel? weather}) =
      _SearchStatePayload;
}
