// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_learning/pages/home_detail.dart';

import '../../models/catalog.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, //
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index]; //item.getByPosition(index)
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  HomeDetailPage(catalog: catalog //CatalogModel.getById(2)
                      ),
            ),
          ),
          child: CatalogItem(
            catalog: catalog,
            key: const Key(""),
          ),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({required Key key, required this.catalog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      //like container
      child: Row(
        children: [
          Hero(
            tag: Key(
              catalog.id.toString(),
            ),
            child: CatalogImage(
              image: catalog.image,
              key: const Key(""),
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.bookName.text.lg.color(context.accentColor).bold.make(),
              // catalog.desc.text
              //     .textStyle(context.captionStyle)
              //     .color(context.accentColor)
              //     .make(),
              Flexible(
                child: Text(
                  catalog.desc,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        overflow: TextOverflow.fade,
                      ),
                ),
              ),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}"
                      .text
                      .bold
                      .color(context.accentColor)
                      .xl
                      .make(),
                  AddToCart(catalog: catalog)
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
