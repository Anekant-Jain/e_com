import 'package:flutter/material.dart';

import 'Clothing.dart';

class Groceries extends StatefulWidget {
  @override
  _GroceriesState createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        elevation: 5.0,
        centerTitle: true,
        title: Text(
          "Groceries",
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
                          Image.network(
                            'data:image/jpeg;base64,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',
                            width: 250.0,
                            height: 250.0,
                          ),
                          SizedBox(height: 7.5,),
                          Text(
                            "Rice 10 Kg",
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Price: ₹ 499.00/-",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Description: Good in Taste and easy to cook.",
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
                          Image.network(
                            'https://pngimg.com/uploads/ketchup/ketchup_PNG25.png',
                            width: 250.0,
                            height: 250.0,
                          ),
                          SizedBox(height: 7.5,),
                          Text(
                            "Tomato Ketchup",
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Price: ₹ 129.00/-",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Description: Made with real tomatoes.",
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
                          Image.network(
                            'https://i.pinimg.com/originals/1a/40/a0/1a40a052b153844197963c641d558206.png',
                            width: 250.0,
                            height: 250.0,
                          ),
                          SizedBox(height: 7.5,),
                          Text(
                            "Maggi",
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Price: ₹ 20.00/-",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Description: Easy to cook.",
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
