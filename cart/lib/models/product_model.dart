import 'package:flutter/cupertino.dart';

class Product {
  final String name;
  final String price;
  final String imageUrl;

  const Product(
      {required this.name, required this.price, required this.imageUrl});
  static const List<Product> products = [
    Product(
        name: "  Cucu Juice",
        price: " \$ 3.45 ",
        imageUrl:
            "https://images.pexels.com/photos/1149300/pexels-photo-1149300.jpeg?auto=compress&cs=tinysrgb&w=400"),
    Product(
        name: "  Orange Juice",
        price: " \$ 5.34",
        imageUrl:
            "https://images.pexels.com/photos/1194028/pexels-photo-1194028.jpeg?auto=compress&cs=tinysrgb&w=400"),
    Product(
        name: "  Apple Juice",
        price: " \$ 5.00 ",
        imageUrl:
            "https://images.pexels.com/photos/2082617/pexels-photo-2082617.jpeg?auto=compress&cs=tinysrgb&w=400"),
    Product(
        name: "  Heart Cofee",
        price: " \$ 3.90 ",
        imageUrl:
            "https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    Product(
        name: " Black Tea",
        price: " \$ 2.99 ",
        imageUrl:
            "https://images.pexels.com/photos/905485/pexels-photo-905485.jpeg?auto=compress&cs=tinysrgb&w=400"),
    Product(
        name: "  Ber Juice",
        price: " \$ 7.13",
        imageUrl:
            "https://images.pexels.com/photos/6387842/pexels-photo-6387842.jpeg?auto=compress&cs=tinysrgb&w=400"),
    Product(
        name: "  Dornut ",
        price: " \$ 6.00 ",
        imageUrl:
            "https://images.pexels.com/photos/768082/pexels-photo-768082.jpeg?auto=compress&cs=tinysrgb&w=400"),
    Product(
        name: "  Ice Cream ",
        price: " \$ 7.00 ",
        imageUrl:
            "https://images.pexels.com/photos/10875218/pexels-photo-10875218.jpeg?auto=compress&cs=tinysrgb&w=400"),
    Product(
        name: "  Momo Soup",
        price: " \$ 8.00",
        imageUrl:
            "https://images.pexels.com/photos/8053829/pexels-photo-8053829.jpeg?auto=compress&cs=tinysrgb&w=400"),
  ];
}
