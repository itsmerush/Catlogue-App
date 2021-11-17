import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pikkc"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome To Pikkc"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
