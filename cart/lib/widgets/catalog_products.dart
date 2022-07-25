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
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
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
    return Container(
      color: Color.fromARGB(255, 248, 245, 245),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  cartController.addProduct(Product.products[index]);
                },
                child: Image.network(
                  Product.products[index].imageUrl,
                  width: 225,
                  height: 135,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.add_circle,
                  size: 13,
                  color: Colors.green,
                ),
                Text(
                  Product.products[index].name,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              '${Product.products[index].price}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
