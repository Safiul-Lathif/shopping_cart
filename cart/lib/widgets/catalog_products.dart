import 'package:cart/controllers/cart_controller.dart';
import 'package:cart/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: List.generate(Product.products.length, (index) {
              return Center(
                child: CatalogProductsCard(index: index),
              );
            })));
  }
}

class CatalogProductsCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  CatalogProductsCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(Product.products[index].imageUrl),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            Product.products[index].name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text('${Product.products[index].price}'),
          IconButton(
            onPressed: () {
              cartController.addProduct(Product.products[index]);
            },
            icon: Icon(
              Icons.add_circle,
            ),
          )
        ],
      ),
    );
  }
}
