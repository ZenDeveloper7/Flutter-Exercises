import 'package:flutter/material.dart';
import 'package:spanishaudio/HomePage.dart';

class SpanishAudio extends StatelessWidget {
  const SpanishAudio({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spanish Audio App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}