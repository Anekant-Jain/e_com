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
                           Image.network(
                               'https://www.freepnglogos.com/uploads/t-shirt-png/t-shirt-png-black-shirt-png-transparent-image-pngpix-2.png',
                                width: 130.0,
                                height: 130.0,
                           ),
                           SizedBox(height: 7.5,),
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
                        child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Basketball.png/170px-Basketball.png',
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
                        child: Image.network(
                          'https://lh3.googleusercontent.com/proxy/hB7AM0hNtLFgeXi4zf_epECvQ27bRahyc-GtBbhEZX5hmtZtbF0ZhkKBJoMLZXsos_cQhurEQvoTOoVz90VUe5uHcndc32tSP1oBIksppET0LLVuLJUeFKPTvtZ8ncxZ',
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
                        child: Image.network(
                          'https://lh3.googleusercontent.com/proxy/JVgPKKI57-mTlzJrohrKwAUb24G9vzEQmQDjGRKu82OFaGowCZlqJdjVKEhCfviHgamCyl0a4ZdvcNDd9exuXMVzhjcLADF2cZYz3M5LM73CZ8Au385_iWX5',
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
                        child: Image.network(
                          'https://i.pinimg.com/originals/8b/ed/07/8bed07b0525de6c40cec2fd811fa783c.png',
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
                        child: Image.network(
                          'https://lh3.googleusercontent.com/proxy/k30BZd0Q16aVjx8484EOSH02rDmiHuTrtyxJGrIfXlJ1hGJb-uiZ_TxyZ1ZdHKpnITW2gzS5qbnSIzG6SxsrSh7sOkgKBmGyaCxFPrYGij8tr_aOKN5wLb_-uwFzMWOm8IBObpPtm4Y',
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
                        child: Image.network(
                          'https://lh3.googleusercontent.com/proxy/MXX-QsxQxfqJprjRjaLVTSIF3-MPjn6RSJBTjCB8GrAY-GcPeAojS-_pHAF_mdGAHgBWVCrrD68BHUfIZZJJWY5SaIz5CqBcfHBG3CYawe4e3BA0BStgtTsKs1-_0g',
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
                        child: Image.network(
                          'https://www.pngfind.com/pngs/m/135-1353973_paper-office-supplies-file-folders-stationary-transprent-stationery.png',
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
                        child: Image.network(
                          'https://lh3.googleusercontent.com/proxy/9LzmyR8G4iqfhKemaTCm1utvcjwywc97G0TB0CMda2F99_YwJEl7KW8TFVfA5wQV4ZTkbSoStPBLXP_BFSRFyXL15epujhUa2A6jhHD_JMimNRconUWZZ0tSqe6K1Lxu50FtwB9RQ-sh',
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
          color: Colors.white,

        ) ,
      ),
      );
  }
}