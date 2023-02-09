// ignore: unused_import
import 'package:flutter/material.dart';

class EuropeanProduct {
  final int id, price;
  final String title, image;

  EuropeanProduct({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<EuropeanProduct> europeanProducts = [
  EuropeanProduct(
    id: 1,
    image: 'assets/products/headphone/headphone1.jpeg',
    title: "Headphone 1",
    price: 34,
  ),
  EuropeanProduct(
    id: 2,
    image: "assets/products/headphone/headphone2.jpeg",
    title: "Headphone 2",
    price: 50,
  ),
  EuropeanProduct(
    id: 3,
    image: "assets/products/headphone/headphone3.jpeg",
    title: "Headphone 3",
    price: 65,
  ),
  EuropeanProduct(
    id: 4,
    image: "assets/products/headphone/headphone4.jpeg",
    title: "Headphone 4",
    price: 30,
  ),
];
