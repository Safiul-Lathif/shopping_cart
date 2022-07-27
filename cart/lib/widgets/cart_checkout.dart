
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartCheckout extends StatelessWidget {
  const CartCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 65 , vertical: 15),
        child: Column(

          children: [
            Container(
              child: OutlinedButton(onPressed: (){},
                child: Text('   Checkout    '),
                style: OutlinedButton.styleFrom(

                    textStyle: TextStyle(fontSize: 12),
                    backgroundColor: Colors.green,
                    primary: Colors.white,
                    side: BorderSide(width: 1,color: Colors.green),

                  padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                ),

              ),
            ),
            SizedBox(
              height:10
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: OutlinedButton(onPressed: (){},
                      child: Text('    Hold   '),
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(20, 20),
                          textStyle: TextStyle(fontSize: 20),
                          primary: Colors.blue,
                          side: BorderSide(width: 2,color: Colors.blue)

                      ),

                    ),
                  ),
                 Container(
                   child: OutlinedButton(
                       child: Text('   Cancel  '),
                     style: OutlinedButton.styleFrom(
                       minimumSize: Size(20, 20),
                       textStyle: TextStyle(fontSize: 20),
                       primary: Colors.red,
                       side: BorderSide(width: 2,color: Colors.red)

                     ),
                     onPressed: () {
                       showAlertDialog(context);

                     },
                   ),
                 )
                ],
              ),
            ),
          ],
        )
    );
  }
}
showAlertDialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );


  AlertDialog alert = AlertDialog(
    title: Text("Cancelled"),
    content: Text("Your order has been cancelled"),
    actions: [
      okButton,
    ],
  );


  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}