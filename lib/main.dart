import 'package:fill/screens/splashscreen.dart';
import 'package:fill/screens/welcomescreen/Homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fill',
      //home: HomeScreen(),
      //home: Homepage(),
      home: SplashScreen(),
    );
  }
}
