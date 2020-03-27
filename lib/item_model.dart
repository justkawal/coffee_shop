import 'package:flutter/material.dart';

class Item {
  final String imageUrl, name, price;
  List<String> description = List<String>(2);
  Item({
    @required this.name,
    @required this.imageUrl,
    @required this.description,
    @required this.price,
  });
}

List<Item> itemList = [
  Item(
    name: "Latte Macchiato",
    imageUrl: "amaretto_macchiato.png",
    description: ["Milk", "Brewed Espresso"],
    price: "\$3.80",
  ),
  Item(
    name: "Hazelnut Cafe Au Lait",
    imageUrl: "coffee_milk.png",
    description: ["Brewed Espresso", "Vanilla Syrup"],
    price: "\$4.35",
  ),
  Item(
    name: "Americano",
    imageUrl: "americano.png",
    description: ["Milk", "Dark Espresso"],
    price: "\$35.80",
  ),
];
