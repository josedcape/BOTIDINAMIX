// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tts/flutter_tts.dart';

Future<void> textToSpeech(String? mytext, String? lang) async {
  if (mytext == null || mytext.isEmpty) {
    return;
  }

  FlutterTts flutterTts = FlutterTts();

  // Verifica que el parámetro lang no esté vacío antes de establecer el idioma
  if (lang != null && lang.isNotEmpty) {
    await flutterTts.setLanguage(lang);
  } else {
    // Si no se proporciona el idioma, establece el idioma predeterminado en inglés
    await flutterTts.setLanguage("es-ES");
  }

  String text = mytext;
  await flutterTts.speak(text);
}
