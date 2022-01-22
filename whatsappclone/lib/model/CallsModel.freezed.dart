// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'CallsModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CallsModelTearOff {
  const _$CallsModelTearOff();

  _CallsModel call(
      {required String name, required String time, required String imageUrl}) {
    return _CallsModel(
      name: name,
      time: time,
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
const $CallsModel = _$CallsModelTearOff();

/// @nodoc
mixin _$CallsModel {
  String get name => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallsModelCopyWith<CallsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallsModelCopyWith<$Res> {
  factory $CallsModelCopyWith(
          CallsModel value, $Res Function(CallsModel) then) =
      _$CallsModelCopyWithImpl<$Res>;
  $Res call({String name, String time, String imageUrl});
}

/// @nodoc
class _$CallsModelCopyWithImpl<$Res> implements $CallsModelCopyWith<$Res> {
  _$CallsModelCopyWithImpl(this._value, this._then);

  final CallsModel _value;
  // ignore: unused_field
  final $Res Function(CallsModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? time = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CallsModelCopyWith<$Res> implements $CallsModelCopyWith<$Res> {
  factory _$CallsModelCopyWith(
          _CallsModel value, $Res Function(_CallsModel) then) =
      __$CallsModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String time, String imageUrl});
}

/// @nodoc
class __$CallsModelCopyWithImpl<$Res> extends _$CallsModelCopyWithImpl<$Res>
    implements _$CallsModelCopyWith<$Res> {
  __$CallsModelCopyWithImpl(
      _CallsModel _value, $Res Function(_CallsModel) _then)
      : super(_value, (v) => _then(v as _CallsModel));

  @override
  _CallsModel get _value => super._value as _CallsModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? time = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_CallsModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CallsModel implements _CallsModel {
  const _$_CallsModel(
      {required this.name, required this.time, required this.imageUrl});

  @override
  final String name;
  @override
  final String time;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'CallsModel(name: $name, time: $time, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CallsModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$CallsModelCopyWith<_CallsModel> get copyWith =>
      __$CallsModelCopyWithImpl<_CallsModel>(this, _$identity);
}

abstract class _CallsModel implements CallsModel {
  const factory _CallsModel(
      {required String name,
      required String time,
      required String imageUrl}) = _$_CallsModel;

  @override
  String get name;
  @override
  String get time;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$CallsModelCopyWith<_CallsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
