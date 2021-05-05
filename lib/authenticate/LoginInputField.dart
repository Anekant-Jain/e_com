
import 'package:e_com/authenticate/RegisterPage.dart';
import 'package:e_com/services/auth.dart';
import 'package:flutter/material.dart';

class LoginInputField extends StatefulWidget{

  final Function toggleView;
  LoginInputField({ this.toggleView });

  @override
  _LoginInputFieldState createState() => _LoginInputFieldState();
}

class _LoginInputFieldState extends State<LoginInputField> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  static String email = '';
  static String password = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey[500])
              )
          ),
          child: TextFormField(
            decoration: InputDecoration(
                fillColor: Colors.grey[300],
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
            ),
            validator: (val) => val.isEmpty ? 'Enter an email' : null,
            onChanged: (val) {
              setState(() => email = val);
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey)
              )
          ),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
            ),
            validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
            onChanged: (val) {
              setState(() => password = val);
            },
          ),
        ),
     ],
    );
  }
}

class LoginButton extends StatefulWidget{
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  String email = "";
  String password = '';

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Colors.grey[800],
          Colors.grey[700],
          Colors.grey[800]
        ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: FlatButton(
          onPressed: () async {
            print("PRESSED");
            if(_formKey.currentState.validate()){
              dynamic result = await _auth.signInWithEmailAndPassword(email, password);
              if(result == null) {
                setState(() {
                  error = 'Could not sign in with those credentials';
                });
              }
            }
          },
          child: Text(
              'LOGIN'
          ),
        ),
      ),
    );
  }
}
class RPButton extends StatefulWidget{
  @override
  _RPButtonState createState() => _RPButtonState();
}

class _RPButtonState extends State<RPButton> {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Colors.grey[800],
          Colors.grey[700],
          Colors.grey[800]
        ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: FlatButton(
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage())
            );
          },
          child: Text(
              'REGISTER'
          ),
        ),
      ),
    );
  }
}