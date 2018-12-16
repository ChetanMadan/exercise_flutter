import 'package:flutter/material.dart';

List b = ["Abs","Legs","Upper Body","Lower Body","Arms","Thighs"];

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Goals'),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: new List<Widget>.generate(6, (index) {
          return new GridTile(
            child: new Card(
                color: Colors.grey.shade200,
                child: new Center(
                  child: new Text(b[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
                )
            ),
          );
        }),
      ),
    );
  }
}