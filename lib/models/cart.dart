// ignore_for_file: unused_field
import 'dart:core';

import 'package:flutter_application_1/pages/catlog.dart';

class CartModel {
  late CatlogueModel _catlog;

  final List<int> _itemIds = [];

  CatlogueModel get catlog => _catlog;

  set catlog(CatlogueModel newCatlog) {
    assert(newCatlog != null);
    _catlog = newCatlog;
  }

  List<Item> get items => _itemIds.map((id) => _catlog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
