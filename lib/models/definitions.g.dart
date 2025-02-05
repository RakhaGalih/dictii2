// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'definitions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Definitions _$DefinitionsFromJson(Map<String, dynamic> json) => Definitions(
      partOfSpeech: json['partOfSpeech'] as String?,
      definitions: (json['definitions'] as List<dynamic>?)
          ?.map((e) => Definition.fromJson(e as Map<String, dynamic>))
          .toList(),
      example: json['example'] as String?,
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      antonyms: (json['antonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DefinitionsToJson(Definitions instance) =>
    <String, dynamic>{
      'partOfSpeech': instance.partOfSpeech,
      'definitions': instance.definitions,
      'example': instance.example,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
    };
