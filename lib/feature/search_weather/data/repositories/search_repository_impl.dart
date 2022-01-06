import 'package:weather/weather.dart';
import 'package:weather_app/core/data/database/db_config.dart';
import 'package:weather_app/core/managers/weather_manager.dart';
import 'package:weather_app/core/utils/data/guarded_datasource_calls.dart';

import 'search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final WeatherApiManager _weatherApiManager;

  SearchRepositoryImpl(this._weatherApiManager);

  @override
  Future<FavouriteWeatherModel> searchByCity({String? cityName}) async {
    Weather weather = await guardedApiCall(
        () => _weatherApiManager.getWeather(city: cityName!),
        source: "searchByCity");
    return FavouriteWeatherModel(
        city: weather.areaName,
        country: weather.country,
        status: weather.weatherDescription,
        current: weather.temperature!.celsius,
        high: weather.tempMax!.celsius,
        low: weather.tempMin!.celsius);
  }
}
