import 'package:weather_app/core/di/di_config.dart';
import 'package:weather_app/feature/search_weather/data/repositories/search_repository.dart';
import 'package:weather_app/feature/search_weather/data/repositories/search_repository_impl.dart';
import 'package:weather_app/feature/search_weather/domain/usecases/search_by_city.dart';
import 'package:weather_app/feature/search_weather/domain/usecases/search_usecases.dart';

Future<void> searchInjector() async {
  inject.registerLazySingleton<SearchRepository>(
      () => SearchRepositoryImpl(inject()));
  inject.registerLazySingleton<SearchByCity>(() => SearchByCity(inject()));
  inject.registerLazySingleton<SearchUseCases>(() => SearchUseCases(inject()));
}
