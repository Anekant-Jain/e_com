import 'package:flutter/material.dart';

import 'RegisterInputField.dart';

class RegisterInputWrapper extends StatefulWidget {
  @override
  _RegisterInputWrapperState createState() => _RegisterInputWrapperState();
}

class _RegisterInputWrapperState extends State<RegisterInputWrapper> {
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
            child: RegisterInputField(),
          ),
          SizedBox(height: 20,),
          RegisterButton(),
          SizedBox(height: 20,),
          LPButton(),
        ],
      ),
    );
  }
}