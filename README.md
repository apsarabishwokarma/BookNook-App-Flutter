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
///MaterialApp
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

----------Function & Method--------

```dart
///[BuildContext] contains information about the location in the tree at which this widget is being built.
Widget build(BuildContext context) {
    return MaterialApp(
       //home: HomePage(),

          ------Theme-------
      //ThemeData
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      //properties of dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      /// a Page or Screen is called a Route.
      routes
      ---------routes-------
      initialRoute: "/home",
      routes: {
        "/": (context) => const HomePage(),
        /*"/" refers default route */
        "/homepage": (context) => const LoginPage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
```

----------------Material------

```dart
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 28 ,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
```

## Day4: Adding images, Google fonts, ElevatedButton, Login

for images:
[undraw](https://undraw.co/illustrations)

for importing external packages:
[pubdev](https://pub.dev/)

```dart

---------------- for images---------
   Image.asset("assets/images/login.png")

//creating image folder inside assets folder and place all the images inside this
// uncomment the assets inside pubspec.yaml and mention - assets/images/
//child and children
//pub.dev for instruction for importing different packages and plugin like google fonts.
/*plugins and packages
A "package" contains only Dart code.
A "plugin" contains both Dart and Native code (kotlin/js/swift/...)*/


----------form------------
```

## Day5: Publish to Github, SingleChildScrollView, Navigator

```dart
`SingleChildScrollView`is a widget in Flutter that allows you to scroll a single child widget within it.

Here is an example of using SingleChildScrollView:

SingleChildScrollView(
  child: Column(
    children: [
      Text('This is a long text that will not fit on the screen.'),
      Text('This is a long text that will not fit on the screen.'),

    ],
  ),
)

//In this example, the SingleChildScrollView widget contains a Column with several text widgets. If the text is too long to fit on the screen, the SingleChildScrollView allows the user to scroll the text up and down.
```

## Day6: Stateful, Animated Container, Future Delay

```dart
//![alt text](http://url/to/img.png)


In Flutter, widgets are either stateful or stateless.


---Stateful Widget
1.A stateful widget is a widget that has a mutable state.
This means that the widget can change its state over time.

An example of a stateful widget is a checkbox that can be checked and unchecked.
 -------Example of stateful widget:

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('Count: $_counter'),
        RaisedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }
}

//This is a stateful widget that displays a count and has a button that can be pressed to increment the count. The count is stored in the _counter field, which is a mutable state of the widget. When the button is pressed, the _incrementCounter method is called, which increments the _counter field and calls setState to notify the framework that the state has changed.


---Stateless Widget
A stateless widget is a widget that does not have mutable state.
This means that the widget does not change its state over time.

An example of a stateless widget is a static text label.





------Example of a stateless widget

class StaticLabel extends StatelessWidget {
  final String text;

  const StaticLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

//This is a stateless widget that displays a static label. The text to display is passed in as a constructor argument and is stored in the text field. Since the text field is not mutable, this widget is stateless.

```

## Day7:

## Day8:

## Day9:

## Day10:
