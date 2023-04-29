import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: context.accentColor),
          backgroundColor: Colors.transparent,
          title: "Cart"
              .text
              .xl4
              .align(TextAlign.center)
              .color(context.accentColor)
              .make(),
        ),
        backgroundColor: context.canvasColor);
  }
}
