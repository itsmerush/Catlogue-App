// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/catlog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(Item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              item.price.toString(),
              textScaleFactor: 1.2,
              style: TextStyle(
                //fontSize: 15,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              child: Text(
                "Buy",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(20, 23),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.only(
                  left: 8,
                  right: 11,
                  top: 3,
                  bottom: 3,
                ),
              ),
              onPressed: () {
                print("by");
              },
            ),
          ],
        ),
      ),
    );
  }
}
