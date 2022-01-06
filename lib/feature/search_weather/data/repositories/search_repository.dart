import 'package:weather_app/core/data/database/db_config.dart';

abstract class SearchRepository {
  Future<FavouriteWeatherModel> searchByCity({String cityName});
}
