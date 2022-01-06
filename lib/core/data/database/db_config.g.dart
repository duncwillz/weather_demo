// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_config.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class FavouriteWeatherModel extends DataClass
    implements Insertable<FavouriteWeatherModel> {
  final String? city;
  final String? country;
  final String? status;
  final double? high;
  final double? low;
  final double? current;
  FavouriteWeatherModel(
      {this.city,
      this.country,
      this.status,
      this.high,
      this.low,
      this.current});
  factory FavouriteWeatherModel.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FavouriteWeatherModel(
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city']),
      country: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}country']),
      status: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status']),
      high: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}high']),
      low: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}low']),
      current: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}current']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String?>(city);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String?>(country);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String?>(status);
    }
    if (!nullToAbsent || high != null) {
      map['high'] = Variable<double?>(high);
    }
    if (!nullToAbsent || low != null) {
      map['low'] = Variable<double?>(low);
    }
    if (!nullToAbsent || current != null) {
      map['current'] = Variable<double?>(current);
    }
    return map;
  }

  FavouriteWeatherCompanion toCompanion(bool nullToAbsent) {
    return FavouriteWeatherCompanion(
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      high: high == null && nullToAbsent ? const Value.absent() : Value(high),
      low: low == null && nullToAbsent ? const Value.absent() : Value(low),
      current: current == null && nullToAbsent
          ? const Value.absent()
          : Value(current),
    );
  }

  factory FavouriteWeatherModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FavouriteWeatherModel(
      city: serializer.fromJson<String?>(json['city']),
      country: serializer.fromJson<String?>(json['country']),
      status: serializer.fromJson<String?>(json['status']),
      high: serializer.fromJson<double?>(json['high']),
      low: serializer.fromJson<double?>(json['low']),
      current: serializer.fromJson<double?>(json['current']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'city': serializer.toJson<String?>(city),
      'country': serializer.toJson<String?>(country),
      'status': serializer.toJson<String?>(status),
      'high': serializer.toJson<double?>(high),
      'low': serializer.toJson<double?>(low),
      'current': serializer.toJson<double?>(current),
    };
  }

  FavouriteWeatherModel copyWith(
          {String? city,
          String? country,
          String? status,
          double? high,
          double? low,
          double? current}) =>
      FavouriteWeatherModel(
        city: city ?? this.city,
        country: country ?? this.country,
        status: status ?? this.status,
        high: high ?? this.high,
        low: low ?? this.low,
        current: current ?? this.current,
      );
  @override
  String toString() {
    return (StringBuffer('FavouriteWeatherModel(')
          ..write('city: $city, ')
          ..write('country: $country, ')
          ..write('status: $status, ')
          ..write('high: $high, ')
          ..write('low: $low, ')
          ..write('current: $current')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(city, country, status, high, low, current);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavouriteWeatherModel &&
          other.city == this.city &&
          other.country == this.country &&
          other.status == this.status &&
          other.high == this.high &&
          other.low == this.low &&
          other.current == this.current);
}

class FavouriteWeatherCompanion extends UpdateCompanion<FavouriteWeatherModel> {
  final Value<String?> city;
  final Value<String?> country;
  final Value<String?> status;
  final Value<double?> high;
  final Value<double?> low;
  final Value<double?> current;
  const FavouriteWeatherCompanion({
    this.city = const Value.absent(),
    this.country = const Value.absent(),
    this.status = const Value.absent(),
    this.high = const Value.absent(),
    this.low = const Value.absent(),
    this.current = const Value.absent(),
  });
  FavouriteWeatherCompanion.insert({
    this.city = const Value.absent(),
    this.country = const Value.absent(),
    this.status = const Value.absent(),
    this.high = const Value.absent(),
    this.low = const Value.absent(),
    this.current = const Value.absent(),
  });
  static Insertable<FavouriteWeatherModel> custom({
    Expression<String?>? city,
    Expression<String?>? country,
    Expression<String?>? status,
    Expression<double?>? high,
    Expression<double?>? low,
    Expression<double?>? current,
  }) {
    return RawValuesInsertable({
      if (city != null) 'city': city,
      if (country != null) 'country': country,
      if (status != null) 'status': status,
      if (high != null) 'high': high,
      if (low != null) 'low': low,
      if (current != null) 'current': current,
    });
  }

  FavouriteWeatherCompanion copyWith(
      {Value<String?>? city,
      Value<String?>? country,
      Value<String?>? status,
      Value<double?>? high,
      Value<double?>? low,
      Value<double?>? current}) {
    return FavouriteWeatherCompanion(
      city: city ?? this.city,
      country: country ?? this.country,
      status: status ?? this.status,
      high: high ?? this.high,
      low: low ?? this.low,
      current: current ?? this.current,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (city.present) {
      map['city'] = Variable<String?>(city.value);
    }
    if (country.present) {
      map['country'] = Variable<String?>(country.value);
    }
    if (status.present) {
      map['status'] = Variable<String?>(status.value);
    }
    if (high.present) {
      map['high'] = Variable<double?>(high.value);
    }
    if (low.present) {
      map['low'] = Variable<double?>(low.value);
    }
    if (current.present) {
      map['current'] = Variable<double?>(current.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavouriteWeatherCompanion(')
          ..write('city: $city, ')
          ..write('country: $country, ')
          ..write('status: $status, ')
          ..write('high: $high, ')
          ..write('low: $low, ')
          ..write('current: $current')
          ..write(')'))
        .toString();
  }
}

class $FavouriteWeatherTable extends FavouriteWeather
    with TableInfo<$FavouriteWeatherTable, FavouriteWeatherModel> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FavouriteWeatherTable(this._db, [this._alias]);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _countryMeta = const VerificationMeta('country');
  @override
  late final GeneratedColumn<String?> country = GeneratedColumn<String?>(
      'country', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String?> status = GeneratedColumn<String?>(
      'status', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _highMeta = const VerificationMeta('high');
  @override
  late final GeneratedColumn<double?> high = GeneratedColumn<double?>(
      'high', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _lowMeta = const VerificationMeta('low');
  @override
  late final GeneratedColumn<double?> low = GeneratedColumn<double?>(
      'low', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _currentMeta = const VerificationMeta('current');
  @override
  late final GeneratedColumn<double?> current = GeneratedColumn<double?>(
      'current', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [city, country, status, high, low, current];
  @override
  String get aliasedName => _alias ?? 'favourite_weather';
  @override
  String get actualTableName => 'favourite_weather';
  @override
  VerificationContext validateIntegrity(
      Insertable<FavouriteWeatherModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('high')) {
      context.handle(
          _highMeta, high.isAcceptableOrUnknown(data['high']!, _highMeta));
    }
    if (data.containsKey('low')) {
      context.handle(
          _lowMeta, low.isAcceptableOrUnknown(data['low']!, _lowMeta));
    }
    if (data.containsKey('current')) {
      context.handle(_currentMeta,
          current.isAcceptableOrUnknown(data['current']!, _currentMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  FavouriteWeatherModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FavouriteWeatherModel.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FavouriteWeatherTable createAlias(String alias) {
    return $FavouriteWeatherTable(_db, alias);
  }
}

abstract class _$LocalDatabaseConfig extends GeneratedDatabase {
  _$LocalDatabaseConfig(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $FavouriteWeatherTable favouriteWeather =
      $FavouriteWeatherTable(this);
  late final FavouriteDao favouriteDao =
      FavouriteDao(this as LocalDatabaseConfig);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favouriteWeather];
}
