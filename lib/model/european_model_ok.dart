import 'dart:convert';

List<EuropeanProductOk> europeanModelFromJson(String str) =>
    List<EuropeanProductOk>.from(
        json.decode(str).map((x) => EuropeanProductOk.fromJson(x)));

String europeanModelToJson(List<EuropeanProductOk> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EuropeanProductOk {
  final String name, description, price, discountValue, id;
  final bool hasDiscount;
  final List<String> gallery;

  EuropeanProductOk({
    required this.name,
    required this.gallery,
    required this.description,
    required this.price,
    required this.discountValue,
    required this.id,
    required this.hasDiscount,
  });

  factory EuropeanProductOk.fromJson(Map<String, dynamic> json) =>
      EuropeanProductOk(
        name: json["name"],
        gallery: json["gallery"],
        description: json["description"],
        price: json["price"],
        discountValue: json["discountValue"],
        hasDiscount: json["hasDiscount"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "gallery": gallery,
        "description": description,
        "price": price,
        "discountValue": discountValue,
        "hasDiscount": hasDiscount,
        "id": id,
      };
}
