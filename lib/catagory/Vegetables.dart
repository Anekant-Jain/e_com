import 'package:flutter/material.dart';

import 'Clothing.dart';

class Vegetables extends StatefulWidget {
  @override
  _VegetablesState createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        elevation: 5.0,
        centerTitle: true,
        title: Text(
          "Vegetables",
          style: TextStyle(
            fontSize: 26.0,
          ),
        ),
      ),
        body: GridView.count(
            mainAxisSpacing: 10.0,
            crossAxisCount: 1,
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
                            'potato.png',
                            width: 250.0,
                            height: 250.0,
                          ),
                          SizedBox(height: 17.5,),
                          Text(
                            "Potato",
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Price: ₹ 49.00/ Kg",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.left,
                          ),

                        ]
                    ),
                  )

              ),

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
                            'onion.png',
                            width: 250.0,
                            height: 250.0,
                          ),
                          SizedBox(height: 17.5,),
                          Text(
                            "Onion",
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Price: ₹ 79.00/Kg",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.left,
                          ),

                        ]
                    ),
                  )

              ),

            ])

    );
  }
}
