import 'package:flutter/material.dart';
import 'package:user_adminscreen/welcome_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );


  }
}