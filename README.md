# 30 days of Flutter

## [Tutorial](https://www.youtube.com/playlist?list=PLrjrqTcKCnhTXI2GyPkaQF47inLp6LoIC)

- [Day1: Flutter Installation and First Step](#day1-flutter-installation-and-first-step)
- [Day2: Git, Data Types and Scaffold](#day2-git-data-types-and-scaffold)
- [Day3: Functions, Classes, Routes, Theme & Text](#day3-functions-classes-routes-theme--text)
- [Day4: Adding images, Google fonts, ElevatedButton, Login](#day4-adding-images-google-fonts-elevatedbutton-login)
- [Day5: Publish to Github, SingleChildScrollView, Navigator](#day5-publish-to-github-singlechildscrollview-navigator)
- [Day6: Stateful, Animated Container, Future Delay](#day6-stateful-animated-container-future-delay)

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
```

## Day2: Git, Data Types and Scaffold

-------------DATA TYPES-----------

```dart
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

-----------SCAFFOLD-------------

```dart
//  Scaffold

Widget build(BuildContext context) {
  /*scaffold Implements the basic Material Design
  visual layout structure.*/
   return Scaffold(
    //  AppBar placed at the top of an app.
     appBar: AppBar(
       title: const Text("Catalog App"),
     ),
     /*body displays the main or primary content in the Scaffold ,displayed below the appBar,above the bottom */
     body: Center(
       child: Container(
         child: Text("I am learning $days flutter by $name //+name"),
       ),
     ),
     /* Drawer is for footer and displayed
     to the left of the body */
     drawer: const Drawer(),
   );
 }
```

## Day3: Functions, Classes, Routes, Theme & Text

## Day4: Adding images, Google fonts, ElevatedButton, Login

## Day5: Publish to Github, SingleChildScrollView, Navigator

## Day6: Stateful, Animated Container, Future Delay

## Day7:

## Day8:

## Day9:

## Day10:
