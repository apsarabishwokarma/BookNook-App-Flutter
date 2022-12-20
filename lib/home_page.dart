import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //horizontal bar
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("I am learning $days flutter by $name"), //or +name
        ),
      ),
      drawer: const Drawer(), //vertical panel
    );
  }
}
