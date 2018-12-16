import 'package:flutter/material.dart';
import 'package:ms_hacks/pages/exercise.dart';
import 'package:ms_hacks/pages/diet.dart';
import 'package:ms_hacks/pages/day.dart';
import 'package:ms_hacks/pages/yoga.dart';
import 'package:ms_hacks/pages/running.dart';
import 'package:ms_hacks/pages/goals.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


List a = ["BMI","CALORIES"];
List<Color> v = [Colors.blue,Colors.pink];



class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
      ),
      body:new StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) => new Container(
            color: Colors.pink,
            child: new Center(
              child: new Text("$index")
            )),
        staggeredTileBuilder: (int index) =>
        new StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ) ,
      drawer: _Drawer()
    );
  }

}

class _Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Column(
        children: <Widget>[
          Image.asset('images/welcome.jpg'),
          ListTile(
            title: new Text("EXERCISE"),
            leading: Icon(Icons.directions_run),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => Exercise()));
            },
          ),
          ListTile(
              title: new Text("DIET"),
              leading: Icon(Icons.free_breakfast),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Diet()));
              }
          ),
          ListTile(
              title: new Text("DAY"),
              leading: Icon(Icons.schedule),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Day()));
              }
          ),
          ListTile(
              title: new Text("YOGA"),
              leading: Icon(Icons.accessibility),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Yoga()));
              }
          ),
          ListTile(
              title: new Text("RUNNING"),
              leading: Icon(Icons.directions),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Running()));
              }
          ),
          ListTile(
              title: new Text("GOALS"),
              leading: Icon(Icons.directions),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Goals()));
              }
          ),
        ],
      ),

    );
  }
}

