import 'package:freezed_annotation/freezed_annotation.dart';  

part 'phonetics.freezed.dart';
part 'phonetics.g.dart';

@freezed  
class Phonetics with _$Phonetics {  
  const factory Phonetics({  
    String? audio, // Link audio  
  }) = _Phonetics;  
  
  factory Phonetics.fromJson(Map<String, dynamic> json) => _$PhoneticsFromJson(json);  
}  
