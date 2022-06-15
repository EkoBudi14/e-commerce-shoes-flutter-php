// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_this

import 'package:equatable/equatable.dart';

class Shoes extends Equatable {
  final int idShoes;
  final String name;
  final double rating;
  final List<String>? tags;
  final double price;
  final List<String> sizes;
  final List<String> colors;
  final String? description;
  final String image;

  Shoes({
    required this.idShoes,
    required this.name,
    required this.rating,
    this.tags,
    required this.price,
    required this.sizes,
    required this.colors,
    this.description,
    required this.image,
  });

  factory Shoes.fromJson(Map<String, dynamic> json) => Shoes(
        idShoes: int.parse(json['id_shoes']),
        name: json['name'],
        rating: double.parse(json['rating']),
        price: double.parse(json['price']),
        sizes: json['sizes'],
        colors: json['colors'],
        image: json['image'],
        tags: json['tags'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        "id_shoes": idShoes,
        "name": name,
        "rating": rating,
        "price": price,
        "sizes": sizes,
        "colors": colors,
        "image": image,
        "tags": tags,
        "description": description,
      };

  Shoes toEntity() {
    return Shoes(
        idShoes: this.idShoes,
        name: this.name,
        rating: this.rating,
        price: this.price,
        sizes: this.sizes,
        description: this.description,
        tags: this.tags,
        colors: this.colors,
        image: this.image);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        idShoes,
        name,
        rating,
        price,
        sizes,
        colors,
        image,
        tags,
        description,
      ];
}
