import 'package:flutter_learning/core/store.dart';
import 'package:flutter_learning/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

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
}

class AddMutation extends VxMutation<MyStore> {
  // final int id;
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  // final int id;
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}
