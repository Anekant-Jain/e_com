import 'package:flutter/material.dart';

class Stationary extends StatefulWidget {
  @override
  _StationaryState createState() => _StationaryState();
}

class _StationaryState extends State<Stationary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        elevation: 5.0,
        centerTitle: true,
        title: Text(
          "Stationary",
          style: TextStyle(
            fontSize: 26.0,
          ),
        ),
      ),
    );
  }
}
