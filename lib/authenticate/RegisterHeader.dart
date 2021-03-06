import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text("Welcome to Buyer's Palace", style: TextStyle(color: Colors.white, fontSize: 40), textAlign: TextAlign.center,),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text("Register", style: TextStyle(color: Colors.white, fontSize: 24), textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}