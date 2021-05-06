import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        elevation: 5.0,
        centerTitle: true,
        title: Text(
          "Booking Page",
          style: TextStyle(
            fontSize: 26.0,
          ),
        ),
      ),
      body: Container(
        child: Text(
          "NO PAYMENT GATEWAY ATTACHED",
          style: TextStyle(
            fontSize: 44,
            color: Colors.white,
          ),
        )
      ),
      );

  }
}
