import 'package:flutter/material.dart';

class Toys extends StatefulWidget {
  @override
  _ToysState createState() => _ToysState();
}

class _ToysState extends State<Toys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        elevation: 5.0,
        centerTitle: true,
        title: Text(
          "Toys",
          style: TextStyle(
            fontSize: 26.0,
          ),
        ),
      ),
    );
  }
}
