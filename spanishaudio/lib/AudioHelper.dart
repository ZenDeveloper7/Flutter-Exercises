import 'package:flutter/material.dart';

class AudioHelper {
  String audioUri;
  MaterialColor buttonColor;
  String buttonText;

  AudioHelper(String audioUri, MaterialColor color, String text) {
    this.audioUri = audioUri;
    buttonColor = color;
    buttonText = text;
  }
}
