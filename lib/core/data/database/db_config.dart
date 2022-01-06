import 'package:flutter/foundation.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:weather_app/feature/favourite_weather/domain/db/dao/favourite_dao.dart';
import 'package:weather_app/feature/favourite_weather/domain/db/entities/favourite_entity.dart';

part 'db_config.g.dart';

@UseMoor(tables: [FavouriteWeather], daos: [FavouriteDao])
class LocalDatabaseConfig extends _$LocalDatabaseConfig {
  LocalDatabaseConfig()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'test.db',
          logStatements: !kReleaseMode,
        )));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
    );
  }
}
