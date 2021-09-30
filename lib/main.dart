import 'package:flutter/material.dart';
import 'package:leadership_app/screens/screen_four.dart';
import 'package:leadership_app/screens/screen_one.dart';
import 'package:leadership_app/screens/screen_three.dart';
import 'package:leadership_app/screens/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leadership App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Mont',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenOne(),
        '/second': (context) => ScreenTwo(),
        '/third': (context) => ScreenThree(),
        '/fourth': (context) => ScreenFour(),
      },
    );
  }
}