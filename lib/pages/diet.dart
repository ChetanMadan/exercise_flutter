import 'package:flutter/material.dart';

class Diet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Diet'),
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context,int index){
            return Column(
              children: <Widget>[
                ListTile(
                  contentPadding: EdgeInsets.all(10.0),
                  leading: Container(
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
                  title: new Text("DAY $index"),


                ),
                Divider(height: 20.0,)
              ],
            );
          }
      ),
    );
  }
}
