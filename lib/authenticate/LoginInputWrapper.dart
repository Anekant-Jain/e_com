import 'package:flutter/material.dart';

import 'LoginInputField.dart';

class InputWrapper extends StatefulWidget {
  @override
  _InputWrapperState createState() => _InputWrapperState();
}

class _InputWrapperState extends State<InputWrapper> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: LoginInputField(),
          ),
          SizedBox(height: 20,),
          Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20,),
          LoginButton(),
          SizedBox(height: 20,),
          RPButton(),
        ],
      ),
    );
  }
}