import 'package:e_com/home/booking.dart';
import 'package:flutter/material.dart';

class BlackT extends StatefulWidget {
  @override
  _BlackTState createState() => _BlackTState();
}

class _BlackTState extends State<BlackT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.grey[600],
          elevation: 5.0,
          centerTitle: true,
          title: Text(
            "Black T-Shirt",
            style: TextStyle(
              fontSize: 26.0,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Image.asset(
                  'blackT.png',
                width: 250,
                height: 400,
              ),
              SizedBox(height: 15,),
              Text(
                "Price: ₹ 699.00 /-                                             ",
                style: TextStyle(
                  fontSize: 24.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15,),
              Text(
                "Description: Colour never fades, very comfortable and soft, best quality product.",
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 25,),
              SizedBox(
                height: 40,
                width: 280,
              child: RaisedButton(
                  onPressed: () async{
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Booking())
                    );

                  } ,
                  color: Colors.green[800],
                  child: Text(
                    "BUY",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
              ),
              )
            ],
          ),
        )
    );
  }
}