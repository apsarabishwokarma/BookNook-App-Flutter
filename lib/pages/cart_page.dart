import 'package:flutter/material.dart';
import 'package:flutter_learning/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
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
        body: Column(
          children: [
            _CartList().p32().expand(),
            const Divider(),
            const _cartTotal(),
          ],
        ));
  }
}

class _cartTotal extends StatelessWidget {
  const _cartTotal();

  @override
  Widget build(BuildContext context) {
    //print("Rebuild Happened");
    final CartModel cart = (VxState.store as MyStore).cart;
    return SizedBox(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // "\$${cart.totalPrice}".text.xl4.color(context.accentColor).make(),
           VxConsumer(notifications: const {}, mutations: const {RemoveMutation},builder: (context,_,status)
            {
              //print("Rebuild Happened");
              return "\$${cart.totalPrice}".text.xl5
              .color(context.theme.colorScheme.secondary)
              .make();
            },),
            30.widthBox,
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor),
              ),
              onPressed: () {
                //scaffoldMessenger
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: "Buying not supported yet"
                        .text
                        .color(context.accentColor)
                        .make(),
                  ),
                );
              },
              child: "BUY".text.bold.white.xl3.make(),
            ).w32(context)
          ],
        ));
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.listen(context, to:[RemoveMutation]);
    final CartModel cart = (VxState.store as MyStore).cart;
    return cart.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.done),
              trailing: IconButton(
                icon: const Icon(Icons.remove_circle),
                onPressed: () =>
                  RemoveMutation(cart.items[index]),
                  // setState(() {});

                  //_cart.remove(_cart.items[index]);
                ,
              ),
              title: cart.items[index].bookName.text.make(),
              //"item".text.make(),
            ),
          );
  }
}
