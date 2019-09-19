import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'quizpage.dart';
import 'widget/library/current_affair.dart';
import 'widget/library/aptitude.dart';
import 'widget/library/web_developmement.dart';
import 'widget/library/python.dart';

class HomeCategory extends StatefulWidget {
  @override
  _HomeCategoryState createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: new SafeArea(   
        child: new Column(   
        children: [
          new Expanded(
            flex: 1,
            child: new Container(
              width: width,
              decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurpleAccent,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        padding: const EdgeInsets.all(10),
              child: new Center(
                child: new GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.4,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0
                    
                ),
                children: <Widget>[
                  new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                              ),
                             Icon(FontAwesomeIcons.history, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  "Quiz",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black,fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                  
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new QuizPage(),
                              ));
                        },
                      )),

                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                              ),
                             Icon(FontAwesomeIcons.calendarAlt, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  "Current Affairs",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w600,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new CurrentAffair(),
                              ));
                        },
                      )),
                      
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                              ),
                             Icon(FontAwesomeIcons.alipay, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  "Aptitude",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w600,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new Aptitude(),
                              ));
                        },
                      )),
                      
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                     color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                              ),
                             Icon(FontAwesomeIcons.brain, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  "Reasoning",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w600,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new QuizPage(),
                              ));
                        },
                      )),
                      
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                              ),
                             Icon(FontAwesomeIcons.solidPaperPlane, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  "Verbal Ability",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w600,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new QuizPage(),
                              ));
                        },
                      )),
                                        
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                              ),
                             Icon(FontAwesomeIcons.weebly, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Text(
                                  "Web Development",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w600,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new WebDevelopment(),
                              ));
                        },
                      )),

                                            new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 18),
                              ),
                             Icon(FontAwesomeIcons.hackerrank, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  "Ethical Hacking",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w600,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new QuizPage(),
                              ));
                        },
                      )),                
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                              ),
                             Icon(FontAwesomeIcons.python, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  "Python",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w600,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new PythonPage(),
                              ));
                        },
                      )),
                                            
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                              ),
                             Icon(FontAwesomeIcons.capsules, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  "C & C++",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w600,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new QuizPage(),
                              ));
                        },
                      )),
                                            
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                              ),
                             Icon(FontAwesomeIcons.java, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  "Java",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w600,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new QuizPage(),
                              ));
                        },
                      )),
                                            
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                              ),
                             Icon(FontAwesomeIcons.lockOpen, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  "Cyber Security",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w600,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new QuizPage(),
                              ));
                        },
                      )),
                                            
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 10.0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                              ),
                             Icon(FontAwesomeIcons.networkWired, color: Colors.indigo.shade900,),
                              new Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  "Computer Network",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w600,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>new QuizPage(),
                              ));
                        },
                      )),
                ],
              )),
            ),
          ),
        ],
       )), );
  }}