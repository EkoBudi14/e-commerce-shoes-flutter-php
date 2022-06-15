// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_this

import 'package:equatable/equatable.dart';

class Wishlist extends Equatable {
  final int idWishlist;
  final int idUser;
  final int idShoes;
  final String name;
  final double rating;
  final List<String> sizes;
  final List<String>? tags;
  final List<String> colors;
  final String? description;
  final String image;

  Wishlist({
    required this.idWishlist,
    required this.idUser,
    required this.idShoes,
    required this.name,
    required this.rating,
    required this.sizes,
    required this.colors,
    this.description,
    required this.image,
    this.tags,
  });

  factory Wishlist.fromJson(Map<String, dynamic> json) => Wishlist(
        tags: json['tags'],
        idWishlist: int.parse(json['id_wishlist']),
        idUser: int.parse(json['id_user']),
        idShoes: int.parse(json['id_shoes']),
        name: json['name'],
        rating: double.parse(json['rating']),
        sizes: json['sizes'],
        colors: json['colors'],
        description: json['description'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() => {
        "tags": tags,
        "id_wishlist": idWishlist,
        "id_user": idUser,
        "id_shoes": idShoes,
        "name": name,
        "rating": rating,
        "sizes": sizes,
        "colors": colors,
        "description": description,
        "image": image,
      };

  Wishlist toEntity() {
    return Wishlist(
      idWishlist: this.idWishlist,
      tags: this.tags,
      description: this.description,
      idUser: this.idUser,
      idShoes: this.idShoes,
      name: this.name,
      rating: this.rating,
      sizes: this.sizes,
      colors: this.colors,
      image: this.image,
    );
  }

  @override
  List<Object?> get props => [
        idWishlist,
        idUser,
        idShoes,
        name,
        rating,
        sizes,
        colors,
        description,
        image,
        tags,
      ];
}
