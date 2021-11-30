import 'dart:convert';
import 'dart:core';

class CatlogueModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iphone12",
      desc: "good",
      price: 67000,
      color: "red",
      image:
          "https://images.pexels.com/photos/5053841/pexels-photo-5053841.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    )
  ];
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
