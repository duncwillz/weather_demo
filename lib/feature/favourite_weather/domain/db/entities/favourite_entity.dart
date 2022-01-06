import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('FavouriteWeatherModel')
class FavouriteWeather extends Table {
  TextColumn get city => text().nullable()();
  TextColumn get country => text().nullable()();
  TextColumn get status => text().nullable()();
  RealColumn get high => real().nullable()();
  RealColumn get low => real().nullable()();
  RealColumn get current => real().nullable()();
}
