import 'package:e_com/catagory/Clothing.dart';
import 'package:e_com/catagory/Groceries.dart';
import 'package:e_com/catagory/Laptops.dart';
import 'package:e_com/catagory/Mobiles.dart';
import 'package:e_com/catagory/Sports.dart';
import 'package:e_com/catagory/Stationary.dart';
import 'package:e_com/catagory/Toys.dart';
import 'package:e_com/catagory/Vegetables.dart';
import 'package:e_com/catagory/Watches.dart';
import 'package:flutter/material.dart';
import 'package:e_com/services/auth.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text(
              "Categories",
          style: TextStyle(
            fontSize: 28.0,
          )
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[600],
          elevation: 5.0,
        ),
        body: GridView.count(
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              padding: EdgeInsets.all(15.0),
              children: <Widget>[
                Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.grey[700],
                child: FlatButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Clothing())
                          );
                        },
                        padding: EdgeInsets.all(0),
                        child: Column(
                         children: <Widget>[
                           Image.asset(
                               'blackT.png',
                                width: 130.0,
                                height: 130.0,
                           ),
                           SizedBox(height: 0,),
                           Text(
                               "Clothing",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.white,
                                ),
                            ),
                    ]
                        ),
                    )

              ),

                Container(
                  padding: EdgeInsets.all(0),
                  color: Colors.grey[700],
                  child: Column (
                    children: <Widget>[
                      FlatButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Sports())
                          );
                        },
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                            'basketball.png',
                          width: 130.0,
                          height: 130.0,
                        ),
                      ),
                      SizedBox(height: 0,),
                      Text(
                          "Sports",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                          ),
                      ),
                    ]
                ),
              ),
                Container(
                padding: EdgeInsets.all(0),
                color: Colors.grey[700],
                child: Column (
                    children: <Widget>[
                      FlatButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Groceries())
                          );
                        },
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'grocery.png',
                          width: 130.0,
                          height: 130.0,
                        ),
                      ),
                      SizedBox(height: 0,),
                      Text(
                        "Groceries",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                padding: EdgeInsets.all(0),
                color: Colors.grey[700],
                child: Column (
                    children: <Widget>[
                      FlatButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Mobiles())
                          );
                        },
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'mobile.png',
                          width: 130.0,
                          height: 130.0,
                        ),
                      ),
                      SizedBox(height: 0,),
                      Text(
                        "Moblies",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                padding: EdgeInsets.all(0),
                color: Colors.grey[700],
                child: Column (
                    children: <Widget>[
                      FlatButton(
                    onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Laptops())
                      );
                      },
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'laptop.png',
                          width: 130.0,
                          height: 130.0,
                        ),
                      ),
                      SizedBox(height: 0,),
                      Text(
                        "Laptops",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                padding: EdgeInsets.all(0),
                color: Colors.grey[700],
                child: Column (
                    children: <Widget>[
                      FlatButton(
                        onPressed: () async {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Vegetables())
                      );
                        },
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'vegetable.png',
                          width: 130.0,
                          height: 130.0,
                        ),
                      ),
                      SizedBox(height: 0,),
                      Text(
                        "Vegetables",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                padding: EdgeInsets.all(0),
                color: Colors.grey[700],
                child: Column (
                    children: <Widget>[
                      FlatButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Watches())
                          );
                        },
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'watch.png',
                          width: 130.0,
                          height: 130.0,
                        ),
                      ),
                      SizedBox(height: 0,),
                      Text(
                        "Watches",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                padding: EdgeInsets.all(0),
                color: Colors.grey[700],
                child: Column (
                    children: <Widget>[
                      FlatButton(
                        onPressed: () async {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Stationary())
                      );
                      },
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'stationary.png',
                          width: 130.0,
                          height: 130.0,
                        ),
                      ),
                      SizedBox(height: 0,),
                      Text(
                        "Stationary",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ]
                ),
              ),
              Container(
                padding: EdgeInsets.all(0),
                color: Colors.grey[700],
                child: Column (
                    children: <Widget>[
                      FlatButton(
                        onPressed: () async {
                         Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Toys())
                          );
                          },
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'toys.png',
                          width: 130.0,
                          height: 130.0,
                        ),
                      ),
                      SizedBox(height: 0,),
                      Text(
                        "Toys",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ]
                ),
              ),
            ]
      ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white

        ) ,
      ),
      );
  }
}