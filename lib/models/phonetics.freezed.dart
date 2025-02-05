// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phonetics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Phonetics _$PhoneticsFromJson(Map<String, dynamic> json) {
  return _Phonetics.fromJson(json);
}

/// @nodoc
mixin _$Phonetics {
  String? get audio => throw _privateConstructorUsedError;

  /// Serializes this Phonetics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Phonetics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhoneticsCopyWith<Phonetics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneticsCopyWith<$Res> {
  factory $PhoneticsCopyWith(Phonetics value, $Res Function(Phonetics) then) =
      _$PhoneticsCopyWithImpl<$Res, Phonetics>;
  @useResult
  $Res call({String? audio});
}

/// @nodoc
class _$PhoneticsCopyWithImpl<$Res, $Val extends Phonetics>
    implements $PhoneticsCopyWith<$Res> {
  _$PhoneticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Phonetics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio = freezed,
  }) {
    return _then(_value.copyWith(
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneticsImplCopyWith<$Res>
    implements $PhoneticsCopyWith<$Res> {
  factory _$$PhoneticsImplCopyWith(
          _$PhoneticsImpl value, $Res Function(_$PhoneticsImpl) then) =
      __$$PhoneticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? audio});
}

/// @nodoc
class __$$PhoneticsImplCopyWithImpl<$Res>
    extends _$PhoneticsCopyWithImpl<$Res, _$PhoneticsImpl>
    implements _$$PhoneticsImplCopyWith<$Res> {
  __$$PhoneticsImplCopyWithImpl(
      _$PhoneticsImpl _value, $Res Function(_$PhoneticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Phonetics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio = freezed,
  }) {
    return _then(_$PhoneticsImpl(
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneticsImpl implements _Phonetics {
  const _$PhoneticsImpl({this.audio});

  factory _$PhoneticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhoneticsImplFromJson(json);

  @override
  final String? audio;

  @override
  String toString() {
    return 'Phonetics(audio: $audio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneticsImpl &&
            (identical(other.audio, audio) || other.audio == audio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, audio);

  /// Create a copy of Phonetics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneticsImplCopyWith<_$PhoneticsImpl> get copyWith =>
      __$$PhoneticsImplCopyWithImpl<_$PhoneticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneticsImplToJson(
      this,
    );
  }
}

abstract class _Phonetics implements Phonetics {
  const factory _Phonetics({final String? audio}) = _$PhoneticsImpl;

  factory _Phonetics.fromJson(Map<String, dynamic> json) =
      _$PhoneticsImpl.fromJson;

  @override
  String? get audio;

  /// Create a copy of Phonetics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneticsImplCopyWith<_$PhoneticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
