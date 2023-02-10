import 'dart:convert';

List<BrazilianProductOk> brazilianModelFromJson(String str) =>
    List<BrazilianProductOk>.from(
        json.decode(str).map((x) => BrazilianProductOk.fromJson(x)));

String brazilianModelToJson(List<BrazilianProductOk> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BrazilianProductOk {
  final String nome,
      descricao,
      categoria,
      imagem,
      preco,
      material,
      departamento,
      id,
      name;

  BrazilianProductOk({
    required this.nome,
    required this.descricao,
    required this.categoria,
    required this.imagem,
    required this.preco,
    required this.material,
    required this.departamento,
    required this.id,
    required this.name,
  });

  factory BrazilianProductOk.fromJson(Map<String, dynamic> json) =>
      BrazilianProductOk(
        nome: json["nome"],
        descricao: json["descricao"],
        categoria: json["categoria"],
        imagem: json["imagem"],
        preco: json["preco"],
        material: json["material"],
        departamento: json["departamento"],
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "descricao": descricao,
        "categoria": categoria,
        "imagem": imagem,
        "preco": preco,
        "material": material,
        "departamento": departamento,
        "id": id,
        "name": name,
      };
}
