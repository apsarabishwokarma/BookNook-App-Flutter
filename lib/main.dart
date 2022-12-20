import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //runApp is a method
}

int days = 30;
double salary = 3.566;

//num for both double and int
num temp = 21.7;

String name = "codepur";
bool isstudent = true;

//for all
var all = 90;
var eve = "compiler can recognize datatype on its own";
const pi = 3.14;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  //build method ma UI ko portion
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("I am learning $days flutter by $name //+name"),
          ),
        ),
      ),
    );
  }
}
