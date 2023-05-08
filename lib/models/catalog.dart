import 'dart:convert';
import 'package:collection/collection.dart';

class CatalogModel {
  static final catModel = CatalogModel._internal(); //singleton class
  CatalogModel._internal();
  factory CatalogModel() => catModel;

  static List<Item> items = [];

  //Get Item By Id
  Item? getById(int id) => items.firstWhereOrNull(
        (element) => element.id == id,
      );

//Get Item by position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String bookName;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.bookName,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  get name => null;

  Item copyWith({
    required int id,
    required String bookName,
    required String desc,
    required num price,
    required String color,
    required String image,
  }) {
    return Item(
      id: id ?? this.id,
      bookName: bookName ?? this.bookName,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'bookName': bookName,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    //if (map == null) return null;

    return Item(
      id: map['id'],
      bookName: map['bookName'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, bookName: $bookName, desc: $desc, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Item &&
        o.id == id &&
        o.bookName == bookName &&
        o.desc == desc &&
        o.price == price &&
        o.color == color &&
        o.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        bookName.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
