// ignore: unused_import
import 'package:flutter/material.dart';

class AllProduct {
  final int id, price;
  final String title, image;

  AllProduct({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<AllProduct> allProducts = [
  AllProduct(
    id: 1,
    image: 'assets/products/iPhone/iphone1.jpeg',
    title: "iPhone 1",
    price: 164,
  ),
  AllProduct(
    id: 2,
    image: "assets/products/iPhone/iphone2.jpeg",
    title: "iPhone 2",
    price: 150,
  ),
  AllProduct(
    id: 3,
    image: "assets/products/iPhone/iphone3.jpeg",
    title: "iPhone 3",
    price: 145,
  ),
  AllProduct(
    id: 4,
    image: "assets/products/iPhone/iphone4.jpeg",
    title: "iPhone 4",
    price: 136,
  ),
];
