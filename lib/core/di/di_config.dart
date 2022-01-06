import 'package:get_it/get_it.dart';
import 'package:weather_app/feature/favourite_weather/domain/di/favourite_injector.dart';
import 'package:weather_app/feature/search_weather/domain/di/search_injector.dart';

import 'core_di.dart';

GetIt inject = GetIt.instance;

/// Registration of service dependencies with  service locator GetIt
///
/// Add any such dependency here
Future<void> initInjectors() async {
  await coreInjector();
  await searchInjector();
  await favouriteInjector();
}
