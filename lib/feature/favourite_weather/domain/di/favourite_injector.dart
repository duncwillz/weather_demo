import 'package:weather_app/core/di/di_config.dart';
import 'package:weather_app/feature/favourite_weather/data/datasources/favourite_local_datasource.dart';
import 'package:weather_app/feature/favourite_weather/data/repositories/favourite_repository.dart';
import 'package:weather_app/feature/favourite_weather/data/repositories/favourite_repository_impl.dart';
import 'package:weather_app/feature/favourite_weather/domain/db/dao/favourite_dao.dart';
import 'package:weather_app/feature/favourite_weather/domain/usecases/favourite_usecases.dart';
import 'package:weather_app/feature/favourite_weather/domain/usecases/get_all_favourites.dart';
import 'package:weather_app/feature/favourite_weather/domain/usecases/mark_as_favourite.dart';
import 'package:weather_app/feature/favourite_weather/domain/usecases/unmark_as_favourite.dart';

Future<void> favouriteInjector() async {
  inject.registerLazySingleton<FavouriteDao>(() => FavouriteDao(inject()));
  inject.registerLazySingleton<FavouriteLocalDataSource>(
      () => FavouriteLocalDataSourceImpl(inject()));
  inject.registerLazySingleton<FavouriteRepository>(
      () => FavouriteRepositoryImpl(inject()));
  inject
      .registerLazySingleton<MarkAsFavourite>(() => MarkAsFavourite(inject()));
  inject.registerLazySingleton<UnMarkAsFavourite>(
      () => UnMarkAsFavourite(inject()));
  inject.registerLazySingleton<GetAllFavourites>(
      () => GetAllFavourites(inject()));

  inject.registerLazySingleton<FavouriteUseCases>(
      () => FavouriteUseCases(inject(), inject(), inject()));
}
