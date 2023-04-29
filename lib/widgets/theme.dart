import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        // ignore: deprecated_member_use
        buttonColor: darkBluishColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
        ),
        // floatingActionButtonTheme: const FloatingActionButtonThemeData(
        //   backgroundColor: Color(0xFF6366F1),
        //   foregroundColor: Colors.indigo,
        // ),
        //primarySwatch: Colors.white10,
        colorScheme:
            Theme.of(context).colorScheme.copyWith(secondary: Colors.black),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        //brightness: Brightness.dark,
        //primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        // ignore: deprecated_member_use
        buttonColor: lightBluishColor,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.white),
          toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
        ),
        //colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white)
        // floatingActionButtonTheme: const FloatingActionButtonThemeData(
        //   backgroundColor: Color(0xFF6366F1),
        //   foregroundColor: Colors.indigo,
        // ),
        primarySwatch: Colors.indigo,
        colorScheme:
            Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
      );

  // useful Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  //hex value of colors starts with oxff
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
