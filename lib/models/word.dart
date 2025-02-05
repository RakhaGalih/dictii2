import 'package:dictii2/models/definitions.dart';
import 'package:dictii2/models/phonetics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';  
  
part 'word.freezed.dart';  
part 'word.g.dart';

@freezed  
class Word with _$Word {  
  const factory Word({  
    required String word,  
    String? phonetic, // Pronunciation  
    List<Phonetics>? phonetics, // Link audio  
    List<Definitions>? meanings, // List definisi  
  }) = _Word;  
  
  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);  
}  
