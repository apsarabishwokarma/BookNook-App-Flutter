import 'package:flutter/material.dart';
import 'package:flutter_learning/models/catalog.dart';
import 'package:flutter_learning/widgets/drawer.dart';
import 'package:flutter_learning/widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  final String name = "codepur";
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
