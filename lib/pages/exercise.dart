import 'package:flutter/material.dart';
import 'package:ms_hacks/pages/exercise/crunch.dart';
import 'package:ms_hacks/pages/exercise/pushup.dart';


List<String> a = ["Push Ups","Crunches","Weight Lifting","Lunges","Pull Ups","Standees"];
List<Widget> d =[Crunch(),PushUps()];
List y = ['images/(1).png','images/(2).png','images/(3).png','images/(4).png','images/(5).png','images/(6).jpg'];


class Exercise extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Exercise'),
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context,int index){
            return Column(
              children: <Widget>[
                ListTile(
                  onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => d[index]));
                  },
                  contentPadding: EdgeInsets.all(10.0),
                  leading: Container(
                    padding: EdgeInsets.all(3.0),
                    decoration: new BoxDecoration(
                      color: Color(0xFF9733ee),
                      shape: BoxShape.circle
                    ),
                    child: CircleAvatar(
                      backgroundImage: new AssetImage(y[index]),
                      radius: 36.0,
                    ),
                  ),
                  title: new Text(a[index],style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),
                Divider(height: 20.0,)
              ],
            );
          }
      ),
    );
  }
}
