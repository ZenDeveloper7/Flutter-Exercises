import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(DiceRoller());

class DiceRoller extends StatelessWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: HomePage(),
    );
  }
}
