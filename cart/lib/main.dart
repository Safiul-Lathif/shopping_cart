import 'package:cart/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/catalog_screen.dart';

void main() {
  runApp(GetMaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: CatalogScreen(),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: CartScreen(),
            ),
          ],
        ));
  }
}
