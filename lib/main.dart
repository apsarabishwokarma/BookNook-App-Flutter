import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/cart_page.dart';
import 'package:flutter_learning/pages/home_page.dart';
import 'package:flutter_learning/pages/login_page.dart';
import 'package:flutter_learning/utils/routes.dart';
import 'package:flutter_learning/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/store.dart';

void main() {
  runApp(VxState(store: MyStore(), child: const MyApp())); //runApp is a method
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//build method ma UI ko portion

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//home: HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,

      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      //ThemeData(
      //     primarySwatch: Colors.deepPurple,
      //     primaryTextTheme: GoogleFonts.latoTextTheme()),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
