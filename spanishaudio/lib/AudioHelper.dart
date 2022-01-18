import 'package:flutter/material.dart';

class AudioHelper {
  late String audioUri;
  late MaterialColor buttonColor;
  late String buttonText;

  AudioHelper(String audioUri, MaterialColor color, String text) {
    this.audioUri = audioUri;
    buttonColor = color;
    buttonText = text;
  }
}
