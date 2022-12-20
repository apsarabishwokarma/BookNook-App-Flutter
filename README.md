# 30 days of Flutter

## [Tutorial](https://www.youtube.com/playlist?list=PLrjrqTcKCnhTXI2GyPkaQF47inLp6LoIC)

- [Day1: Flutter Installation and First Step](#day1-flutter-installation-and-first-step)
- [Day2: Git, Dart Types and Scaffold](#day2-git-dart-types-and-scaffold)
- [Day3: Functions, Classes, Routes, Theme & Text](#day3-functions-classes-routes-theme--text)

## Day1: Flutter Installation and First Step

```dart
// This imports contains all the basic functionality and widgets of flutter
import 'package:flutter/material.dart';

// Starting point of our app
// everything starts from main function
/// runApp will run the given widget [MyApp]
/// [MyApp] should have [MaterialApp] on build
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override

  // build UI
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


// Data Types
int days = 30;
double salary = 3.566;
num temp = 21.7; // can take both int and double
num temp2 = 21;
String name = "apsara";
bool isStudent = true; // or False

// dynamically invoke type
var eve = "something"; // eve is String now
var sun = 1; // sun is int now

// compile time constants
const pi = 3.14;

// run time constants
// A value can be assigned to this only once
final time = 10;

// Valid
const day = 'Sunday';

// Invalid
const day; // should assign value during declaration
day = 'Sunday'; //

// Valid
final time; // can assign value anywhere but only once
time = '10:45 AM';

// Invalid
final time = '10:45 AM';
time = '10:55 PM'; // Can't assign value more than once
```

## Day2: Git, Dart Types and Scaffold

## Day3: Functions, Classes, Routes, Theme & Text
