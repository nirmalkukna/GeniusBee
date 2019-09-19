import 'package:flutter/material.dart';

class Aptitude extends StatefulWidget {
  @override
  _AptitudeState createState() => _AptitudeState();
}

class _AptitudeState extends State<Aptitude> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: Text("Aptitute"),
        backgroundColor: Colors.deepPurpleAccent,
        titleSpacing: 0,
      ),
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
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
              child: new Center(
                child: new GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 15.0
                    
                ),
                children: <Widget>[
                  new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top:30.0),
                                child: Text(
                                  "Time & Distance",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),

                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation:0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top:25.0),
                                child: Text(
                                  "Geometry & Mensuration",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                      
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  "Numbers",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                      
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top:25.0),
                                child: Text(
                                  "Percentages, Profit/Loss	",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                      
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[

                              new Padding(
                                padding: EdgeInsets.only(top:30.0),
                                child: Text(
                                  "Time & Work",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                      
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top:30.0),
                                child: Text(
                                  "S.I. & C.I.",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                                            
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[

                              new Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  "Partnership",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                     new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[

                              new Padding(
                                padding: EdgeInsets.only(top: 25),
                                child: Text(
                                  "Problems on Trains",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),                
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
  
                              new Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  "HCF & LCM",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                                            
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top:30.0),
                                child: Text(
                                  "Average",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                                            
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top:30.0),
                                child: Text(
                                  "Trigonometry",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                                                                  
                      new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new GestureDetector(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top:25.0),
                                child: Text(
                                  "Ratio and Proportion",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w800,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    
                ],
              )),
            ),
          ),
        ],
       )), );
  }}