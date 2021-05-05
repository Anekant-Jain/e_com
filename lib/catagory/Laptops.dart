import 'package:flutter/material.dart';

class Laptops extends StatefulWidget {
  @override
  _LaptopsState createState() => _LaptopsState();
}

class _LaptopsState extends State<Laptops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        elevation: 5.0,
        centerTitle: true,
        title: Text(
          "Laptops",
          style: TextStyle(
            fontSize: 26.0,
          ),
        ),
      ),
    );
  }
}
