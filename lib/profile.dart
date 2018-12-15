import 'package:flutter/material.dart';
import 'package:ms_hacks/pages/exercise.dart';
import 'package:ms_hacks/pages/diet.dart';
import 'package:ms_hacks/pages/day.dart';
import 'package:ms_hacks/pages/yoga.dart';
import 'package:ms_hacks/pages/running.dart';
import 'package:ms_hacks/pages/goals.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            Image.asset('images/welcome.jpg'),
            ListTile(
              title: new Text("EXERCISE"),
              leading: Icon(Icons.directions_run),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Exercise() ));
              },
            ),
            ListTile(
              title: new Text("DIET"),
              leading: Icon(Icons.free_breakfast),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Diet() ));
                }
            ),
            ListTile(
              title: new Text("DAY"),
              leading: Icon(Icons.schedule),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Day()));
                }
            ),
            ListTile(
              title: new Text("YOGA"),
              leading: Icon(Icons.accessibility),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Yoga() ));
                }
            ),
            ListTile(
                title: new Text("RUNNING"),
                leading: Icon(Icons.directions),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Running() ));
                }
            ),
            ListTile(
                title: new Text("GOALS"),
                leading: Icon(Icons.directions),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Goals() ));
                }
            ),
          ],
        ),
        
      ),
    );
  }
}
