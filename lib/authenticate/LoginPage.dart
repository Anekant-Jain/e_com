import 'package:flutter/material.dart';
import 'LoginHeader.dart';
import 'LoginInputWrapper.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, colors: [
            Colors.grey[800],
            Colors.grey[700],
            Colors.grey[800]
          ]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 80,),
            Header(),
            Expanded(child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  )
              ),
              child: InputWrapper(),

            ))
          ],
        ),
      ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
        ),
    );
  }
}