import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catlog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(Item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
