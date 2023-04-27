// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learning/models/catalog.dart';
import 'package:flutter_learning/widgets/drawer.dart';
import 'package:flutter_learning/widgets/item_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "codepur";

  // @override
  // void initState() {
  //   super.initState();
  //   loadData();
  // }

  // loadData() async {
  //   final catalogjson =
  //       await rootBundle.loadString("assets/files/catalog.json");
  //   //print(catalogjson);
  //   final decodedData = jsonDecode(catalogjson); //from string to other format
  //   //print(decodeData);
  //   //var encodedata = jsonEncode(object);//from other to string
  //   var productsData = decodedData["products"];
  //   // List<Item> list = List.from(productsData)
  //   //     .map<Item>((item) => Item.fromMap(item))
  //   //     .toList();
  //   //This line of code creates a new list with the same length as productsData and fills it with null values.
  //   CatalogModel.items = List.from(productsData)
  //       .map<Item>((item) => Item.fromMap(item))
  //       .toList();
  //   setState(() {});

  //   //print(produtsData);
  // }
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //sabai main dart with theme widget
        //   backgroundColor: Colors.white,
        //    elevation: 0.0,
        //  iconTheme: const IconThemeData(color: Colors.black),
        //   textTheme: Theme.of(context).textTheme),
        //horizontal bar
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
          //dummy list for creating same item 20 times

          itemCount: CatalogModel.items.length,
          //itemCount: dummyList.length,
          itemBuilder: (context, index) {
            //item kasari display garne bare
            return ItemWidget(
              item: CatalogModel.items[index],
              // item: dummyList[index],
            );
          },
        ),
      ),
      // Center(
      //   child: Container(
      //     child: Text("I am learning $days flutter by $name"), //or +name
      //   ),
      // ),

      drawer: const MyDrawer(), //vertical panel
    );
  }
}
