import 'package:weather_app/core/data/database/db_config.dart';
import 'package:weather_app/core/managers/weather_manager.dart';

import 'di_config.dart';

Future<void> coreInjector() async {
  inject.registerLazySingleton<WeatherApiManager>(
      () => WeatherApiManager.instance);
  inject
      .registerLazySingleton<LocalDatabaseConfig>(() => LocalDatabaseConfig());
}
