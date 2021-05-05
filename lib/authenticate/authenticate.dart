import 'package:e_com/authenticate/LoginInputField.dart';
import 'package:e_com/authenticate/RegisterInputField.dart';
import 'package:flutter/material.dart';
import 'package:e_com/authenticate/LoginPage.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginInputField(toggleView:  toggleView);
    } else {
      return RegisterInputField(toggleView:  toggleView);
    }
  }
}