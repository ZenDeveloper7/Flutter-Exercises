import 'package:flutter/material.dart';
import 'package:whatsappclone/ui/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
              primaryColor: const Color(0xff075E54),
              appBarTheme:
                  const AppBarTheme(backgroundColor: Color(0xff075E54)),
              tabBarTheme: const TabBarTheme(labelColor: Colors.white),
              textTheme: const TextTheme(
                  headline6: TextStyle(color: Colors.white, fontSize: 16.0),
                  subtitle2: TextStyle(color: Colors.grey),
                  button: TextStyle(color: Colors.white)),
              bottomAppBarColor: Colors.white)
          .copyWith(
              colorScheme: ThemeData()
                  .colorScheme
                  .copyWith(secondary: const Color(0xff25D366))),
      home: const Home(),
    );
  }
}
