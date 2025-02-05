import 'package:dictii2/models/word.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class ApiService {
  static final ApiService _instance = ApiService._internal();
  late Dio _dio;

  factory ApiService() {
    return _instance;
  }

  ApiService._internal() {
    _dio = Dio(BaseOptions(
      baseUrl: "https://api.dictionaryapi.dev/api/v2/entries/en/",
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
    ));
  }

  static ApiService get instance => _instance;

  Dio get dio => _dio;

  Future<Word?> fetchWord(String query) async {
    try {
      final response = await _dio.get(query);
      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return Word.fromJson(data[0]);
      } else {
        return null; // Word not found
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
