import 'dart:async';

import 'package:weather_app/core/data/database/db_config.dart';
import 'package:weather_app/core/data/datasources/local_datasource_base.dart';
import 'package:weather_app/feature/favourite_weather/domain/db/dao/favourite_dao.dart';

abstract class FavouriteLocalDataSource extends LocalDataSource {
  Future<List<FavouriteWeatherModel>> getAllFavourites();
  Future<List<FavouriteWeatherModel>> markAsFavourite(
      FavouriteWeatherModel favourite);
  Future<List<FavouriteWeatherModel>> unMarkAsFavourite(
      FavouriteWeatherModel favourite);
}

class FavouriteLocalDataSourceImpl implements FavouriteLocalDataSource {
  FavouriteDao favouriteDao;

  FavouriteLocalDataSourceImpl(this.favouriteDao);
  @override
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  void dispose() {}

  @override
  Future<List<FavouriteWeatherModel>> getAllFavourites() async =>
      await favouriteDao.getAllFavourites();

  @override
  Future<List<FavouriteWeatherModel>> markAsFavourite(favourite) async =>
      await favouriteDao.saveFavourite(favourite);

  @override
  Future<List<FavouriteWeatherModel>> unMarkAsFavourite(favourite) async =>
      await favouriteDao.deleteFavourite(favourite);
}
