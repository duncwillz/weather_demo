// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavouriteStatePayloadTearOff {
  const _$FavouriteStatePayloadTearOff();

  _FavouriteStatePayload call(
      {bool? isFavourite, List<FavouriteWeatherModel>? favourites}) {
    return _FavouriteStatePayload(
      isFavourite: isFavourite,
      favourites: favourites,
    );
  }
}

/// @nodoc
const $FavouriteStatePayload = _$FavouriteStatePayloadTearOff();

/// @nodoc
mixin _$FavouriteStatePayload {
  bool? get isFavourite => throw _privateConstructorUsedError;
  List<FavouriteWeatherModel>? get favourites =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouriteStatePayloadCopyWith<FavouriteStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteStatePayloadCopyWith<$Res> {
  factory $FavouriteStatePayloadCopyWith(FavouriteStatePayload value,
          $Res Function(FavouriteStatePayload) then) =
      _$FavouriteStatePayloadCopyWithImpl<$Res>;
  $Res call({bool? isFavourite, List<FavouriteWeatherModel>? favourites});
}

/// @nodoc
class _$FavouriteStatePayloadCopyWithImpl<$Res>
    implements $FavouriteStatePayloadCopyWith<$Res> {
  _$FavouriteStatePayloadCopyWithImpl(this._value, this._then);

  final FavouriteStatePayload _value;
  // ignore: unused_field
  final $Res Function(FavouriteStatePayload) _then;

  @override
  $Res call({
    Object? isFavourite = freezed,
    Object? favourites = freezed,
  }) {
    return _then(_value.copyWith(
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      favourites: favourites == freezed
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<FavouriteWeatherModel>?,
    ));
  }
}

/// @nodoc
abstract class _$FavouriteStatePayloadCopyWith<$Res>
    implements $FavouriteStatePayloadCopyWith<$Res> {
  factory _$FavouriteStatePayloadCopyWith(_FavouriteStatePayload value,
          $Res Function(_FavouriteStatePayload) then) =
      __$FavouriteStatePayloadCopyWithImpl<$Res>;
  @override
  $Res call({bool? isFavourite, List<FavouriteWeatherModel>? favourites});
}

/// @nodoc
class __$FavouriteStatePayloadCopyWithImpl<$Res>
    extends _$FavouriteStatePayloadCopyWithImpl<$Res>
    implements _$FavouriteStatePayloadCopyWith<$Res> {
  __$FavouriteStatePayloadCopyWithImpl(_FavouriteStatePayload _value,
      $Res Function(_FavouriteStatePayload) _then)
      : super(_value, (v) => _then(v as _FavouriteStatePayload));

  @override
  _FavouriteStatePayload get _value => super._value as _FavouriteStatePayload;

  @override
  $Res call({
    Object? isFavourite = freezed,
    Object? favourites = freezed,
  }) {
    return _then(_FavouriteStatePayload(
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      favourites: favourites == freezed
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as List<FavouriteWeatherModel>?,
    ));
  }
}

/// @nodoc

class _$_FavouriteStatePayload implements _FavouriteStatePayload {
  const _$_FavouriteStatePayload({this.isFavourite, this.favourites});

  @override
  final bool? isFavourite;
  @override
  final List<FavouriteWeatherModel>? favourites;

  @override
  String toString() {
    return 'FavouriteStatePayload(isFavourite: $isFavourite, favourites: $favourites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavouriteStatePayload &&
            (identical(other.isFavourite, isFavourite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavourite, isFavourite)) &&
            (identical(other.favourites, favourites) ||
                const DeepCollectionEquality()
                    .equals(other.favourites, favourites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFavourite) ^
      const DeepCollectionEquality().hash(favourites);

  @JsonKey(ignore: true)
  @override
  _$FavouriteStatePayloadCopyWith<_FavouriteStatePayload> get copyWith =>
      __$FavouriteStatePayloadCopyWithImpl<_FavouriteStatePayload>(
          this, _$identity);
}

abstract class _FavouriteStatePayload implements FavouriteStatePayload {
  const factory _FavouriteStatePayload(
      {bool? isFavourite,
      List<FavouriteWeatherModel>? favourites}) = _$_FavouriteStatePayload;

  @override
  bool? get isFavourite => throw _privateConstructorUsedError;
  @override
  List<FavouriteWeatherModel>? get favourites =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavouriteStatePayloadCopyWith<_FavouriteStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
