import 'package:flutter_learning/models/catalog.dart';

class CartModel {
  //catalog fields _ private
  // static final cartModel = CartModel._internal(); //singleton class
  // CartModel._internal();
  // factory CartModel() => cartModel;

  late CatalogModel _catalog;
  //CatalogModel _catalog = Catalog();

//collections of ids of products
  final List<int> _itemIds = [];

//get catalog
  CatalogModel get catalog => _catalog;

  //set catalog
  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)!).toList();

  //List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();
  // Iterable<Item?> get items =>
  //     _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
