// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_this

import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  final int idCart;
  final int idUser;
  final int idShoes;
  final String name;
  final double rating;
  final List<String>? tags;
  final double price;
  final List<String>? sizes;
  final List<String>? colors;
  final String? description;
  final String image;
  final int quantity;

  Cart({
    required this.colors,
    this.description,
    required this.idCart,
    required this.idShoes,
    required this.idUser,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    required this.sizes,
    this.tags,
    required this.quantity,
  });

  Cart toEntity() {
    return Cart(
      colors: this.colors,
      idCart: this.idCart,
      idShoes: this.idShoes,
      idUser: this.idUser,
      image: this.image,
      name: this.name,
      price: this.price,
      rating: this.rating,
      sizes: this.sizes,
      quantity: this.quantity,
    );
  }

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        colors: json['colors'],
        idCart: int.parse(json['id_cart']),
        idShoes: int.parse(json['id_shoes']),
        idUser: int.parse(json['id_user']),
        tags: json['tags'],
        description: json['description'],
        image: json['image'],
        name: json['name'],
        price: double.parse(json['price']),
        rating: double.parse(json['rating']),
        sizes: json['sizes'],
        quantity: int.parse(json['quantity']),
      );

  Map<String, dynamic> toJson() => {
        "colors": colors,
        "id_cart": idCart,
        "id_shoes": idShoes,
        "tags": tags,
        "description": description,
        "id_user": idUser,
        "image": image,
        "name": name,
        "price": price,
        "rating": rating,
        "sizes": sizes,
        "quantity": quantity,
      };

  @override
  List<Object?> get props => [
        tags,
        description,
        colors,
        idShoes,
        idCart,
        idUser,
        image,
        name,
        price,
        rating,
        sizes,
        quantity,
      ];
}
