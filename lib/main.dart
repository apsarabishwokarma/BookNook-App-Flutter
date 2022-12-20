import 'package:flutter/material.dart';
import 'package:flutter_learning/home_page.dart';

void main() {
  runApp(const MyApp()); //runApp is a method
}
   
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  //build method ma UI ko portion
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
