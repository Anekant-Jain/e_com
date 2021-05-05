

import 'package:flutter/material.dart';

class Clothing extends StatefulWidget {
  @override
  _ClothingState createState() => _ClothingState();
}

class _ClothingState extends State<Clothing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        elevation: 5.0,
        centerTitle: true,
        title: Text(
            "Clothing",
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
                        'https://www.freepnglogos.com/uploads/t-shirt-png/t-shirt-png-black-shirt-png-transparent-image-pngpix-2.png',
                          width: 250.0,
                          height: 250.0,
                          ),
                          SizedBox(height: 7.5,),
                          Text(
                          "Black T-shirt",
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.white,
                  ),
                ),
                      Text(
                        "Price: ₹ 699.00/-",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Description: Comfortable, easy to wear, nice colour.",
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
                          'https://pngimg.com/uploads/jeans/jeans_PNG5748.png',
                          width: 250.0,
                          height: 250.0,
                        ),
                        SizedBox(height: 7.5,),
                        Text(
                          "Jeans",
                          style: TextStyle(
                            fontSize: 26.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Price: ₹ 1799.00/-",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Description: Comfortable, easy to wear, nice colour.",
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
                          'https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8109.png',
                          width: 250.0,
                          height: 250.0,
                        ),
                        SizedBox(height: 7.5,),
                        Text(
                          "Shirt",
                          style: TextStyle(
                            fontSize: 26.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Price: ₹ 799.00/-",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Description: Comfortable, easy to wear, nice colour.",
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
