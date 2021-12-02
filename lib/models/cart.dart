// ignore_for_file: unused_field
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/catlog.dart';

class CartModel {
  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;

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
