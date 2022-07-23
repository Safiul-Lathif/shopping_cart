import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/catalog_screen.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey,
      ),
      home: CatalogScreen(),
    );
  }
}
