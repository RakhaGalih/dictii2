// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Word _$WordFromJson(Map<String, dynamic> json) {
  return _Word.fromJson(json);
}

/// @nodoc
mixin _$Word {
  String get word => throw _privateConstructorUsedError;
  String? get phonetic => throw _privateConstructorUsedError; // Pronunciation
  List<Phonetics>? get phonetics =>
      throw _privateConstructorUsedError; // Link audio
  List<Definitions>? get meanings => throw _privateConstructorUsedError;

  /// Serializes this Word to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Word
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WordCopyWith<Word> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordCopyWith<$Res> {
  factory $WordCopyWith(Word value, $Res Function(Word) then) =
      _$WordCopyWithImpl<$Res, Word>;
  @useResult
  $Res call(
      {String word,
      String? phonetic,
      List<Phonetics>? phonetics,
      List<Definitions>? meanings});
}

/// @nodoc
class _$WordCopyWithImpl<$Res, $Val extends Word>
    implements $WordCopyWith<$Res> {
  _$WordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Word
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetic = freezed,
    Object? phonetics = freezed,
    Object? meanings = freezed,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: freezed == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetics: freezed == phonetics
          ? _value.phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<Phonetics>?,
      meanings: freezed == meanings
          ? _value.meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<Definitions>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordImplCopyWith<$Res> implements $WordCopyWith<$Res> {
  factory _$$WordImplCopyWith(
          _$WordImpl value, $Res Function(_$WordImpl) then) =
      __$$WordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      String? phonetic,
      List<Phonetics>? phonetics,
      List<Definitions>? meanings});
}

/// @nodoc
class __$$WordImplCopyWithImpl<$Res>
    extends _$WordCopyWithImpl<$Res, _$WordImpl>
    implements _$$WordImplCopyWith<$Res> {
  __$$WordImplCopyWithImpl(_$WordImpl _value, $Res Function(_$WordImpl) _then)
      : super(_value, _then);

  /// Create a copy of Word
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetic = freezed,
    Object? phonetics = freezed,
    Object? meanings = freezed,
  }) {
    return _then(_$WordImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: freezed == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetics: freezed == phonetics
          ? _value._phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<Phonetics>?,
      meanings: freezed == meanings
          ? _value._meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<Definitions>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordImpl implements _Word {
  const _$WordImpl(
      {required this.word,
      this.phonetic,
      final List<Phonetics>? phonetics,
      final List<Definitions>? meanings})
      : _phonetics = phonetics,
        _meanings = meanings;

  factory _$WordImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordImplFromJson(json);

  @override
  final String word;
  @override
  final String? phonetic;
// Pronunciation
  final List<Phonetics>? _phonetics;
// Pronunciation
  @override
  List<Phonetics>? get phonetics {
    final value = _phonetics;
    if (value == null) return null;
    if (_phonetics is EqualUnmodifiableListView) return _phonetics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Link audio
  final List<Definitions>? _meanings;
// Link audio
  @override
  List<Definitions>? get meanings {
    final value = _meanings;
    if (value == null) return null;
    if (_meanings is EqualUnmodifiableListView) return _meanings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Word(word: $word, phonetic: $phonetic, phonetics: $phonetics, meanings: $meanings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic) &&
            const DeepCollectionEquality()
                .equals(other._phonetics, _phonetics) &&
            const DeepCollectionEquality().equals(other._meanings, _meanings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      phonetic,
      const DeepCollectionEquality().hash(_phonetics),
      const DeepCollectionEquality().hash(_meanings));

  /// Create a copy of Word
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WordImplCopyWith<_$WordImpl> get copyWith =>
      __$$WordImplCopyWithImpl<_$WordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordImplToJson(
      this,
    );
  }
}

abstract class _Word implements Word {
  const factory _Word(
      {required final String word,
      final String? phonetic,
      final List<Phonetics>? phonetics,
      final List<Definitions>? meanings}) = _$WordImpl;

  factory _Word.fromJson(Map<String, dynamic> json) = _$WordImpl.fromJson;

  @override
  String get word;
  @override
  String? get phonetic; // Pronunciation
  @override
  List<Phonetics>? get phonetics; // Link audio
  @override
  List<Definitions>? get meanings;

  /// Create a copy of Word
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WordImplCopyWith<_$WordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
