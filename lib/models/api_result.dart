import 'package:dictii2/models/word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';  
  
part 'api_result.freezed.dart';  
  
@freezed  
class ApiResult with _$ApiResult {  
  const factory ApiResult.success(Word word) = Success;  
  const factory ApiResult.error(String message) = Error;  
}  
