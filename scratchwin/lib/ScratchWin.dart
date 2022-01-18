import 'package:flutter/material.dart';
import 'HomePage.dart';

class ScratchWin extends StatelessWidget {
  const ScratchWin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scratch and Win',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
