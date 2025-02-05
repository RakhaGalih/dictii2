import 'package:dictii2/models/definition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'definitions.g.dart'; // Ini akan dihasilkan

@JsonSerializable()
class Definitions {
  final String? partOfSpeech; // Jenis kata (noun, verb, dll)
  final List<Definition>? definitions;    // Definisi
  final String? example;       // Contoh penggunaan
  final List<String>? synonyms; // Daftar sinonim
  final List<String>? antonyms; // Daftar antonim

  Definitions({
    this.partOfSpeech,
    this.definitions,
    this.example,
    this.synonyms,
    this.antonyms,
  });

  // Factory constructor untuk membuat instance Definition dari map.
  factory Definitions.fromJson(Map<String, dynamic> json) => _$DefinitionsFromJson(json);

  // Method untuk mengonversi instance Definition ke map.
  Map<String, dynamic> toJson() => _$DefinitionsToJson(this);
}
