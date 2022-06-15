// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_this

import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int idUser;
  final String name;
  final String email;

  User({
    required this.idUser,
    required this.name,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        idUser: int.parse(json['id_user']),
        name: json['name'],
        email: json['email'],
      );

  User toEntity() {
    return User(
      idUser: this.idUser,
      name: this.name,
      email: this.email,
    );
  }

  Map<String, dynamic> toJson() => {
        "id_user": idUser,
        "name": name,
        "email": email,
      };

  @override
  // TODO: implement props
  List<Object?> get props => [
        idUser,
        name,
        email,
      ];
}
