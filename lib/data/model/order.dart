// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_this

import 'package:equatable/equatable.dart';

class Order extends Equatable {
  final int idOrder;
  final int idUser;
  final String listShop;
  final String delivery;
  final String payment;
  final String? note;
  final double total;
  final String image;
  final String arrived;
  final DateTime dateTime;

  Order({
    required this.idOrder,
    required this.arrived,
    required this.delivery,
    required this.idUser,
    required this.image,
    required this.listShop,
    this.note,
    required this.payment,
    required this.total,
    required this.dateTime,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
      idOrder: int.parse(json['id_user']),
      note: json['note'],
      arrived: json['arrived'],
      delivery: json['delivery'],
      idUser: int.parse(json['id_user']),
      image: json['image'],
      listShop: json['list_shop'],
      payment: json['payment'],
      total: double.parse(json['total']),
      dateTime: DateTime.parse(json['date_time']));

  Map<String, dynamic> toJson(String imageBase64) => {
        'delivery': this.delivery,
        'id_order': this.idOrder,
        'id_user': this.idUser,
        'image': this.image,
        'image_file': imageBase64,
        'list_shop': this.listShop,
        'payment': this.payment,
        'total': this.total,
        'note': this.note,
      };

  // Order toEntity() {
  //   return Order(
  //       idOrder: idOrder,
  //       arrived: arrived,
  //       delivery: delivery,
  //       idUser: idUser,
  //       image: image,
  //       listShop: listShop,
  //       payment: payment,
  //       total: total,
  //       dateTime: dateTime);
  // }

  @override
  // TODO: implement props
  List<Object?> get props => [
        delivery,
        idOrder,
        idUser,
        image,
        listShop,
        payment,
        note,
        total,
        note,
      ];
}
