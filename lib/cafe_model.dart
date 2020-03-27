import 'package:flutter/material.dart';

class Cafe {
  final String imageUrl, name, address;
  Cafe({
    @required this.name,
    @required this.imageUrl,
    @required this.address,
  });
}

List<Cafe> cafeList = [
  Cafe(
    name: "Coffee Shop",
    imageUrl: "coffee_shop_1.jpg",
    address: "463 7th Ave, New York",
  ),
  Cafe(
    name: "Small Coffee House",
    imageUrl: "coffee_shop_2.jpg",
    address: "239 E 5th St, New York",
  ),
  Cafe(
    name: "Another Coffee Shop",
    imageUrl: "coffee_shop_3.jpg",
    address: "249 E 5th St, New York",
  ),
  Cafe(
    name: "Another Coffee Shop",
    imageUrl: "coffee_shop_4.jpg",
    address: "259 E 5th St, New York",
  ),
  Cafe(
    name: "A Coffee House",
    imageUrl: "coffee_shop_5.jpg",
    address: "269 E 5th St, New York",
  ),
];
