import 'package:flutter/material.dart';
import 'profile.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context,new MaterialPageRoute(builder: (BuildContext context) => Profile()));
      },
      child: Scaffold(
        body: new Stack(
        children: <Widget>[
          Image.asset(
            'images/welcome.jpg',
            fit: BoxFit.cover,
            color: Color(0xff0d69ff).withOpacity(1.0),
            colorBlendMode: BlendMode.softLight,
          ),
//        DecoratedBox(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              begin: FractionalOffset.topCenter,
//              end: FractionalOffset.bottomCenter,
//              colors: [
//                Color(0xff0d69ff).withOpacity(0.0),
//                Color(0xff0069ff).withOpacity(0.8),
//              ],
//            ),
//          ),
//        ),
//        DecoratedBox(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//                begin: FractionalOffset.topLeft,
//                end: FractionalOffset.bottomRight,
//                colors: [
//                  Color(0xff692eff).withOpacity(0.8),
//                  Color(0xff642cf4).withOpacity(0.8),
//                  Color(0xff602ae9).withOpacity(0.8),
//                  Color(0xff5224c8).withOpacity(0.8),
//                  Color(0xff5e29e5).withOpacity(0.8),
//                ],
//                stops: [0.0,0.25,0.5,0.75,1.0]
//            ),
//          ),
//        ),

        ],


        ),


      ),
    );
  }
}
