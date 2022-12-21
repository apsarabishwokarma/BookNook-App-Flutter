import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/home_page.dart';
import 'package:flutter_learning/pages/login_page.dart';

void main() {
  runApp(const MyApp()); //runApp is a method
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//build method ma UI ko portion

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => const HomePage(),
        "/homepage": (context) => const LoginPage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
