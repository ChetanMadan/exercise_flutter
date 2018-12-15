import 'package:flutter/material.dart';

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Goals'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(3.0),
            decoration: new BoxDecoration(
                color: Color(0xFF9733ee),
                shape: BoxShape.circle
            ),
            child: CircleAvatar(
              backgroundImage: new AssetImage('images/google.jpg'),
              radius: 36.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(3.0),
            decoration: new BoxDecoration(
                color: Color(0xFF9733ee),
                shape: BoxShape.circle
            ),
            child: CircleAvatar(
              backgroundImage: new AssetImage('images/google.jpg'),
              radius: 36.0,
            ),
          ),
        ],
      )
    );
  }
}
