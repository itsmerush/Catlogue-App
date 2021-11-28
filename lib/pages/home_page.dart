// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/pages/catlog.dart';
import 'package:flutter_application_1/pages/item_widget.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/pages/catlog.dart';
import 'package:flutter/src/services/asset_bundle.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catlogJson = await rootBundle.loadString("assets/files/catlog.json");
    final decodedData = jsonDecode(catlogJson);
    var productsData = decodedData["products"];
    CatlogueModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catlogue App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatlogueModel.items != null && CatlogueModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatlogueModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    //item: CatlogueModel.items[index],
                    item: CatlogueModel.getByPosition(index),
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.shopping_cart_outlined,
          size: 40,
        ),
        onPressed: () => Navigator.pushNamed(context, Myroutes.catlogRoute),
      ),
      drawer: MyDrawer(),
    );
  }
}
