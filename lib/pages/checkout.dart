// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catlogue App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text("This is checkout page"),
      ),
    );
  }
}
