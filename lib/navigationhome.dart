import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geniusbee/about_us.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:page_transition/page_transition.dart';
import 'newspage.dart';
import 'homecategory.dart';
import 'quizpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTabIndex = 0;
  List<Widget> tabs = [
    HomeCategory(),
    NewsPage(),
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

        return Scaffold(
                 appBar: new AppBar(
            backgroundColor: Colors.deepPurpleAccent[200],
            title: new Text('GeniusBee'),
            elevation: 0,
          ),
          body: tabs[currentTabIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: onTapped,
        currentIndex: currentTabIndex,  
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold))
    
                ),
              BottomNavigationBarItem(
                icon: new Icon(FontAwesomeIcons.bookReader),
                title: Text("News", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
                )
            ],   
          ),
            drawer: ClipRRect(
              borderRadius: BorderRadius.circular(20),
            child: Drawer(
              child: new ListView(
                children: <Widget>[
                  
                  Container(
                    margin: EdgeInsets.zero,
                    height: 120,
                    padding: EdgeInsets.zero,
                    child: DrawerHeader(
                    child: Text('GeniusBee', style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 20,fontWeight: FontWeight.w500,)
                    ),
                    
                    decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/bg_nav.jpg'),
                      
                    )
                   ),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.symmetric(vertical: 45,horizontal: 70)
                  
                  )),
                  new ListTile(
                    
                    title: new Text("Home"),
                    trailing: new Icon(Icons.home),
                    onTap: (){
                      Navigator.of(context).pop();
                       Navigator.of(context).pushNamed("/home");
                    },
                   
                  ),
                   new ListTile(
                      title: new Text("Quiz"),
                      trailing: new Icon(FontAwesomeIcons.history),
                      onTap: (){
                       Navigator.push(context, PageTransition(type: PageTransitionType.scale,child: QuizPage()));
                    },
                  ),
                  new ListTile(
                      title: new Text("News"),
                      trailing: new Icon(FontAwesomeIcons.bookReader),
                      onTap: (){
                       Navigator.push(context, PageTransition(type: PageTransitionType.scale,child: NewsPage()));
                    },
                  ),
                
                  new ListTile(
                      title: new Text("About Us"),
                      trailing: new Icon(Icons.info),
                      onTap: (){
                      Navigator.push(context, PageTransition(type: PageTransitionType.scale,child: Aboutus()));
                    },
                  ),

                  new ListTile(
                    title: new Text("Contact Us"),
                    trailing: new Icon(Icons.contact_mail),
                    onTap: () => launch("mailto:nirmal.kukna21@gmail.com?subject=GeniusBee") ,
                  ),
                      
              new Divider(),
              new ListTile(
                
                title: new Text("Exit"),
                trailing: new Icon(Icons.exit_to_app),
                onTap: ()=> SystemNavigator.pop()
           )
            ],
          ),
          
        ),
        ),);
      
  }
}