import 'package:flutter/material.dart';
import 'package:geniusbee/about_us.dart';
import 'newspage.dart';
import 'navigationhome.dart';
import 'quizpage.dart';
import 'widget/library/splashscreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeniusBee',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
        fontFamily: 'Montserrat',
      ),
      home: new SplashScreen(),
      
    
      routes: <String, WidgetBuilder>{

        "/home": (BuildContext context) => new HomePage(),
        "/aboutus": (BuildContext context) => new Aboutus(),
        "/newshome": (BuildContext context) => new NewsPage(),
        "/quiz": (BuildContext context) => new QuizPage(),

      }
    );
  }
}
