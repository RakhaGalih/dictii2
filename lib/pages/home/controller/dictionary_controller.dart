import 'dart:async';  
import 'package:audioplayers/audioplayers.dart';  
import 'package:dictii2/models/word.dart';  
import 'package:dictii2/service/api_service.dart';  
import 'package:flutter/material.dart';  
  
class DictionaryController {  
  final TextEditingController controller = TextEditingController();  
  Word? word;  
  final AudioPlayer audioPlayer = AudioPlayer();  
  Timer? debounce;  
  
  void onTextChanged(Function updateView) {  
    if (debounce?.isActive ?? false) debounce!.cancel();  
  
    debounce = Timer(const Duration(milliseconds: 500), () {  
      searchWord(updateView);  
    });  
  }  
  
  Future<void> searchWord(Function updateView) async {  
    try {  
      final query = controller.text.trim();  
      if (query.isEmpty) return;  
  
      final fetchedWord = await ApiService.instance.fetchWord(query);  
      word = fetchedWord;  
      updateView(); // Memanggil fungsi untuk memperbarui tampilan  
    } catch (e) {  
      print(e);  
    }  
  }  
  
  Future<void> playAudio(String? url) async {  
    if (url != null && url.isNotEmpty) {  
      await audioPlayer.play(UrlSource(url));  
    }  
  }  
  
  void dispose() {  
    debounce?.cancel();  
    controller.dispose();  
  }  
}  
