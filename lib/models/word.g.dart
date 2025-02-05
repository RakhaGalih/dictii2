// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordImpl _$$WordImplFromJson(Map<String, dynamic> json) => _$WordImpl(
      word: json['word'] as String,
      phonetic: json['phonetic'] as String?,
      phonetics: (json['phonetics'] as List<dynamic>?)
          ?.map((e) => Phonetics.fromJson(e as Map<String, dynamic>))
          .toList(),
      meanings: (json['meanings'] as List<dynamic>?)
          ?.map((e) => Definitions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WordImplToJson(_$WordImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'phonetic': instance.phonetic,
      'phonetics': instance.phonetics,
      'meanings': instance.meanings,
    };
