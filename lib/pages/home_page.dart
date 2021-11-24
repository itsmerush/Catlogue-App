// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PikkC"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome To PikkC"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
