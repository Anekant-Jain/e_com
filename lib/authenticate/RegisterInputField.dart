
import 'package:e_com/authenticate/LoginPage.dart';
import 'package:e_com/services/auth.dart';
import 'package:flutter/material.dart';

class RegisterInputField extends StatefulWidget{

  final Function toggleView;
  RegisterInputField({ this.toggleView });

  @override
  _RegisterInputFieldState createState() => _RegisterInputFieldState();
}

class _RegisterInputFieldState extends State<RegisterInputField> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String email = '';
  String password = '';

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

class RegisterButton extends StatefulWidget{
  @override
  _RegisterButtonState createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {

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
              'REGISTER',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class LPButton extends StatefulWidget{
  @override
  _LPButtonState createState() => _LPButtonState();
}

class _LPButtonState extends State<LPButton> {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Colors.grey[600],
          Colors.grey[500],
          Colors.grey[600]
        ]),
      ),
      child: Center(
        child: FlatButton(
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage())
            );
          },
          child: Text(
              'SIGN-IN',
            style: TextStyle(
                color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}