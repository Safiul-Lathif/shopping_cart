import 'package:cart/widgets/cart_checkout.dart';
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
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(" Cart",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          )),
      body: Column(
        children: [CartProducts(), Expanded(flex: 1, child: CartTotal()) , CartCheckout()],
      ),
    );
  }
}
