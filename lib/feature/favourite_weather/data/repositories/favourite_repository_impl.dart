import 'package:weather_app/core/data/database/db_config.dart';
import 'package:weather_app/core/utils/data/guarded_datasource_calls.dart';
import 'package:weather_app/feature/favourite_weather/data/datasources/favourite_local_datasource.dart';

import 'favourite_repository.dart';

class FavouriteRepositoryImpl implements FavouriteRepository {
  final FavouriteLocalDataSource _localDataSource;

  FavouriteRepositoryImpl(this._localDataSource);

  @override
  Future<List<FavouriteWeatherModel>> getAllFavourites() async =>
      await guardedCacheAccess(() => _localDataSource.getAllFavourites(),
          source: "getAllFavourites");

  @override
  Future<List<FavouriteWeatherModel>> markAsFavourite(
          FavouriteWeatherModel favourite) async =>
      await guardedCacheAccess(
          () => _localDataSource.markAsFavourite(favourite),
          source: "markAsFavourite");

  @override
  Future<List<FavouriteWeatherModel>> unMarkAsFavourite(
          FavouriteWeatherModel favourite) async =>
      await guardedCacheAccess(
          () => _localDataSource.unMarkAsFavourite(favourite),
          source: "unMarkAsFavourite");
}
