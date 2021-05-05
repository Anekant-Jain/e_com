import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        elevation: 5.0,
        centerTitle: true,
        title: Text(
          "Product",
          style: TextStyle(
            fontSize: 26.0,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Image.asset(
              'product.jpg'
            ),
            SizedBox(height: 15,),
            Text(
              "Price: ₹ xxxx.xx /-                                             ",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 15,),
            Text(
              "Description: The very details of the product informing about everything.",
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 25,),
            RaisedButton(
              onPressed: () {} ,
              color: Colors.green[800],
              child: Text(
                "BUY",
              )
            ),
          ],
        ),
      )
    );
  }
}