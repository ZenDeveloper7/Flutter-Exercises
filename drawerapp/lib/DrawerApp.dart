import 'package:drawerapp/Category.dart';
import 'package:drawerapp/HomePage.dart';
import 'package:drawerapp/Signup.dart';
import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drawer App",
      debugShowCheckedModeBanner: false,
      home: Signup(),
      theme: ThemeData.dark(),
      routes: <String,WidgetBuilder>{
        '/category': (BuildContext context) => Category(),

      } ,
    );
  }
}