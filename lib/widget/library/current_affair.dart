import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurrentAffair extends StatefulWidget {
  const CurrentAffair({Key key}) : super(key:key);
  @override
  _CurrentAffairState createState() => _CurrentAffairState();
}

class _CurrentAffairState extends State<CurrentAffair> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Current Affair"),
        backgroundColor: Colors.deepPurpleAccent,
        titleSpacing: 5,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: <Widget>[
          ListTile(
            leading: Icon(FontAwesomeIcons.newspaper),
            title: Text("Current Affair 2019", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,),),
          ),
          ListTile(
            title: Text("1.    Current Affair Augest 2019",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
          ),
          Divider(),
           ListTile(
            title: Text("2.    Current Affair July 2019",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
          ),
          Divider(),
           ListTile(
            title: Text("3.    Current Affair June 2019",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
          ),
          Divider(),
           ListTile(
            title: Text("4.    Current Affair May 2019",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
          ),
          Divider(),
           ListTile(
            title: Text("5.    Current Affair April 2019",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
          ),
          Divider(),
           ListTile(
            title: Text("6.    Current Affair March 2019",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
          ),
          Divider(),
           ListTile(
            title: Text("8.    Current Affair February 2019",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
          ),
          Divider(),
           ListTile(
            title: Text("9.    Current Affair January 2019",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
          ),
          Divider(),
        ],
      )
    );
  }
}