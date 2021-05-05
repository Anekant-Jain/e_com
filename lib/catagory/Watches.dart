import 'package:flutter/material.dart';

class Watches extends StatefulWidget {
  @override
  _WatchesState createState() => _WatchesState();
}

class _WatchesState extends State<Watches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        elevation: 5.0,
        centerTitle: true,
        title: Text(
          "Watches",
          style: TextStyle(
            fontSize: 26.0,
          ),
        ),
      ),
    );
  }
}
