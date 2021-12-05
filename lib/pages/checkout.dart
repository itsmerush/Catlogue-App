// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, camel_case_types, duplicate_ignore

import 'dart:io';
import 'dart:ui';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MyCart",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: <Widget>[
          Flexible(child: _cartList()),
          Divider(),
          _cartTotal(),
        ],
      ),
    );
  }
}

class _cartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "\$${_cart.totalPrice}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Your order has been Placed"),
              ));
            },
            child: Text("CheckOut"),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class _cartList extends StatefulWidget {
  @override
  __cartListState createState() => __cartListState();
}

class __cartListState extends State<_cartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? Text("Nothing to show")
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
              title: Text(_cart.items[index].name),
            ),
          );
  }
}
