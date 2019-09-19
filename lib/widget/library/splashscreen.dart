import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async{
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, homepage);
  }
  void homepage(){
    Navigator.of(context).pushReplacementNamed('/home');
  }
  @override
  void initState() {
    super.initState();
    startTime();
  } 
@override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: new Center(
        child: new Container(
          child: Column(children: <Widget>[
            new Padding(
              padding: EdgeInsets.only(top: 320),
              child: new Text("GeniusBee",style: TextStyle(fontSize: 35, 
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Georgia',
                          color: Colors.white,
         ),
         textAlign: TextAlign.center,
        ) 
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 60),
              child: new Text("News App",style: TextStyle(fontSize: 25, 
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Georgia',
                          color: Colors.green,
             ),
              textAlign: TextAlign.center,
              ),
            ),
          Padding(
            padding: EdgeInsets.only(top: 70),
            child: SpinKitThreeBounce(
              itemBuilder: (_, int index) {
               return DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
               color: index.isEven ? Colors.white : Colors.green ,
             ),
             
          );
         },
            ),
          )
          ],),
        )
         ),
        
    );
  }
}