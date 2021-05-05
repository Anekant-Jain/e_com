
import 'package:e_com/authenticate/RegisterPage.dart';
import 'package:flutter/material.dart';

import 'package:e_com/authenticate/LoginPage.dart';

import 'home/home.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}