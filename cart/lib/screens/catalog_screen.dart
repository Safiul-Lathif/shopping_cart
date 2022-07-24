import 'package:cart/widgets/catalog_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/widgets.dart';
import 'cart_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Food Items",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          CatalogProducts(),
        ],
      )),
      drawer: Drawer(
        elevation: 15.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('safi'),
              accountEmail: Text('safi123@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text('xyz'),
              ),
            ),
            ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.add_chart_rounded),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('My wishlist'),
              leading: Icon(Icons.list),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('My favourites'),
              leading: Icon(Icons.favorite),
            ),
            Divider(
              height: 0.1,
            )
          ],
        ),
      ),
    );
  }
}
