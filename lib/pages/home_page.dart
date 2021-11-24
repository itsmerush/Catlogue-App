// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
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
        child: Container(
          child: Text("Welcome To PikkC"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
