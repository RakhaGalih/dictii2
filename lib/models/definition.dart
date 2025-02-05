import 'package:json_annotation/json_annotation.dart';

part 'definition.g.dart'; // Ini akan dihasilkan

@JsonSerializable()
class Definition {
  final String? definition; // Definisi

  Definition({
    this.definition,
  });

  // Factory constructor untuk membuat instance Definition dari map.
  factory Definition.fromJson(Map<String, dynamic> json) => _$DefinitionFromJson(json);

  // Method untuk mengonversi instance Definition ke map.
  Map<String, dynamic> toJson() => _$DefinitionToJson(this);
}
