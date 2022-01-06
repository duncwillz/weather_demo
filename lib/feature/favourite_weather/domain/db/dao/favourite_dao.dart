import 'package:moor_flutter/moor_flutter.dart';
import 'package:weather_app/core/data/database/db_config.dart';
import 'package:weather_app/feature/favourite_weather/domain/db/entities/favourite_entity.dart';

part 'favourite_dao.g.dart';

/// Data Access Object for user-related data access.
/// Not to be used directly. It's used internally by the
/// [FavouriteLocalDatabaseService] layer
@UseDao(tables: [
  FavouriteWeather,
])
class FavouriteDao extends DatabaseAccessor<LocalDatabaseConfig>
    with _$FavouriteDaoMixin {
  final LocalDatabaseConfig databaseConfig;

  FavouriteDao(this.databaseConfig) : super(databaseConfig);

  Future<List<FavouriteWeatherModel>> getAllFavourites() async =>
      await select(favouriteWeather).get();

  Future<List<FavouriteWeatherModel>> deleteFavourite(
      FavouriteWeatherModel favourite) async {
    (delete(favouriteWeather)..where((tbl) => tbl.city.equals(favourite.city)))
        .go();
    return await getAllFavourites();
  }

  Future<List<FavouriteWeatherModel>> saveFavourite(
      FavouriteWeatherModel favourite) async {
    into(favouriteWeather).insert(favourite, mode: InsertMode.insertOrReplace);
    return await getAllFavourites();
  }
}
