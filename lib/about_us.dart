import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const APP_VERSION = 'v1.1.0';
const APP_NAME = 'GeniusBee';
const APP_DESCRIPTION = 'I want perseverance and dedication in self-development. It helps me achieve personal as well as organization goals.'
    '\n\nDeveloped by Nirmal Kukna.';
const APP_DESCRIPTION1 = 'I want perseverance and dedication in self-development. It helps me achieve personal as well as organization goals.'
    '\n';
const GITHUB_URL = 'https://github.com/nirmalkukna';
const DEVELOPER_SITE = 'http://nirmalkukna.ml';
const EMAIL = 'mailto:nirmal.kukna21@gmail.com?subject=GeniusBee';

class AboutApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About GeniusBee',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
        fontFamily: 'Montserrat',
        
      ),
    );
  }
}


class Aboutus extends StatefulWidget {
 const Aboutus ({Key key}) : super(key: key);
  @override
  
  _AboutusState createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("About GeniusBee", style: TextStyle(fontSize: 18.0)),
        backgroundColor: Colors.deepPurpleAccent[200],
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          new Container(
            
            child: new SingleChildScrollView(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                      leading: Image.asset('assets/icon.png',height: 64.0, width: 64.0,),
                      title: Text(APP_NAME),
                      subtitle: Text(APP_VERSION),
                      trailing: IconButton(
                        icon: Icon(Icons.info),
                        onPressed: (){
                          showAboutDialog(
                            context: context,
                            applicationName: APP_NAME,
                            applicationVersion: APP_VERSION,
                            applicationIcon: Image.asset('assets/icon.png',height: 64.0, width: 64.0,),
                            children: <Widget>[Text(APP_DESCRIPTION)]
                          );
                        },
                      ),
                  ),
                
                  ListTile(
                    title: Text(APP_DESCRIPTION1, style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Developed by", textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w900)),
                  ),
                 
                ListTile(
                      leading: Image.asset('assets/images/nirmal.jpg',height: 100.0, width: 64.0,),
                      title: Text("Nirmal Kukna"),
                      trailing: Icon(Icons.email),
                      onTap: () => launch(EMAIL),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                  ),
                ListTile(
                  leading: Icon(Icons.open_in_new),
                  title: Text('Visit my website'),
                  onTap: () => launch(DEVELOPER_SITE),
                ),
                
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
