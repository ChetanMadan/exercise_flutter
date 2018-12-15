import 'package:flutter/material.dart';
import 'profile.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[

            new Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              child: new TextField(
                controller: null,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  icon: new Icon(
                    Icons.person,
                    size: 30.0,
                  ),
                  labelText: "Age",
                  labelStyle: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              child: new TextField(
                controller:null,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  icon: new Icon(
                    Icons.insert_chart,
                    size: 30.0,
                  ),
                  labelText: "Height in meters",
                  labelStyle: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              child: new TextField(
                controller: null,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    icon: new Icon(
                      Icons.dehaze,
                      size: 30.0,
                    ),
                    labelText: "Weight in kg",
                    labelStyle: TextStyle(fontSize: 20.0)),
              ),
            ), new Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              child: new TextField(
                controller: null,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    icon: new Icon(
                      Icons.email,
                      size: 30.0,
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 20.0)),
              ),
            ),

            new Padding(padding: EdgeInsets.all(8.0)),
            Container(
              height: 40.0,
              width: 100.0,
              child: RaisedButton(
                child: new Text("Submit",style: TextStyle(fontSize: 20.0),),
                  color: Colors.lightBlueAccent,
                  onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => Profile()));
              }),
            )
          ],
        ),
      ),
    );
  }
}
