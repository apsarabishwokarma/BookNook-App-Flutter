import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        "/homepage": (context) => const LoginPage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
