import 'package:weather_app/core/data/database/db_config.dart';

abstract class FavouriteRepository {
  Future<List<FavouriteWeatherModel>> getAllFavourites();
  Future<List<FavouriteWeatherModel>> markAsFavourite(
      FavouriteWeatherModel favourite);
  Future<List<FavouriteWeatherModel>> unMarkAsFavourite(
      FavouriteWeatherModel favourite);
}
