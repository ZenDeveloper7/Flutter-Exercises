import 'package:flutter/material.dart';
import 'package:mycameraapp/HomePage.dart';


class MyCameraApp extends StatelessWidget {
  const MyCameraApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Camera App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}