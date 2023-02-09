import 'package:flutter/material.dart';
import 'dart:convert';

List<EuropeanProductOk> europeanModelFromJson(String str) =>
    List<EuropeanProductOk>.from(
        json.decode(str).map((x) => EuropeanProductOk.fromJson(x)));

String europeanModelToJson(List<EuropeanProductOk> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EuropeanProductOk {
  final String name,
      gallery,
      description,
      price,
      details,
      adjective,
      material,
      id;

  EuropeanProductOk({
    required this.name,
    required this.gallery,
    required this.description,
    required this.price,
    required this.details,
    required this.adjective,
    required this.material,
    required this.id,
  });

  factory EuropeanProductOk.fromJson(Map<String, dynamic> json) =>
      EuropeanProductOk(
        name: json["name"],
        gallery: json["gallery"],
        description: json["description"],
        price: json["price"],
        details: json["details"],
        adjective: json["adjective"],
        material: json["material"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "gallery": gallery,
        "description": description,
        "price": price,
        "details": details,
        "adjective": adjective,
        "material": material,
        "id": id,
      };
}
