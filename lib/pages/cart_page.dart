import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "Cart".text.xl4.align(TextAlign.center).make(),
        ),
        backgroundColor: MyTheme.creamColor);
  }
}
