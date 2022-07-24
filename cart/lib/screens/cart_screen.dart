import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/cart_products.dart';
import '../widgets/cart_total.dart';
import '../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(" Cart",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
      body: Column(
        children: [
          CartProducts(),
          // CartTotal(),
        ],
      ),
    );
  }
}
