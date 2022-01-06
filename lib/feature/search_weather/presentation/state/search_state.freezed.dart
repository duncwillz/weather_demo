// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStatePayloadTearOff {
  const _$SearchStatePayloadTearOff();

  _SearchStatePayload call({FavouriteWeatherModel? weather}) {
    return _SearchStatePayload(
      weather: weather,
    );
  }
}

/// @nodoc
const $SearchStatePayload = _$SearchStatePayloadTearOff();

/// @nodoc
mixin _$SearchStatePayload {
  FavouriteWeatherModel? get weather => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStatePayloadCopyWith<SearchStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStatePayloadCopyWith<$Res> {
  factory $SearchStatePayloadCopyWith(
          SearchStatePayload value, $Res Function(SearchStatePayload) then) =
      _$SearchStatePayloadCopyWithImpl<$Res>;
  $Res call({FavouriteWeatherModel? weather});
}

/// @nodoc
class _$SearchStatePayloadCopyWithImpl<$Res>
    implements $SearchStatePayloadCopyWith<$Res> {
  _$SearchStatePayloadCopyWithImpl(this._value, this._then);

  final SearchStatePayload _value;
  // ignore: unused_field
  final $Res Function(SearchStatePayload) _then;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as FavouriteWeatherModel?,
    ));
  }
}

/// @nodoc
abstract class _$SearchStatePayloadCopyWith<$Res>
    implements $SearchStatePayloadCopyWith<$Res> {
  factory _$SearchStatePayloadCopyWith(
          _SearchStatePayload value, $Res Function(_SearchStatePayload) then) =
      __$SearchStatePayloadCopyWithImpl<$Res>;
  @override
  $Res call({FavouriteWeatherModel? weather});
}

/// @nodoc
class __$SearchStatePayloadCopyWithImpl<$Res>
    extends _$SearchStatePayloadCopyWithImpl<$Res>
    implements _$SearchStatePayloadCopyWith<$Res> {
  __$SearchStatePayloadCopyWithImpl(
      _SearchStatePayload _value, $Res Function(_SearchStatePayload) _then)
      : super(_value, (v) => _then(v as _SearchStatePayload));

  @override
  _SearchStatePayload get _value => super._value as _SearchStatePayload;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_SearchStatePayload(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as FavouriteWeatherModel?,
    ));
  }
}

/// @nodoc

class _$_SearchStatePayload implements _SearchStatePayload {
  const _$_SearchStatePayload({this.weather});

  @override
  final FavouriteWeatherModel? weather;

  @override
  String toString() {
    return 'SearchStatePayload(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchStatePayload &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality().equals(other.weather, weather)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(weather);

  @JsonKey(ignore: true)
  @override
  _$SearchStatePayloadCopyWith<_SearchStatePayload> get copyWith =>
      __$SearchStatePayloadCopyWithImpl<_SearchStatePayload>(this, _$identity);
}

abstract class _SearchStatePayload implements SearchStatePayload {
  const factory _SearchStatePayload({FavouriteWeatherModel? weather}) =
      _$_SearchStatePayload;

  @override
  FavouriteWeatherModel? get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchStatePayloadCopyWith<_SearchStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
