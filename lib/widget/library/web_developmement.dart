import 'package:flutter/material.dart';

class WebDevelopment extends StatefulWidget {
  @override
  _WebDevelopmentState createState() => _WebDevelopmentState();
}

class _WebDevelopmentState extends State<WebDevelopment> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: Text("Web Deveplopment"),
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
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
              child: new Center(
                child: new GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1.9,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0
                    
                ),
                children: <Widget>[
                  new Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),

                    color: Colors.white,
                      elevation: 0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top:10.0),
                                child: Text(
                                  "HTML\n\nHTML is the standard markup language for Web pages.\nHTML is easy to learn - You will enjoy it!",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w700,),
                                  textAlign: TextAlign.center,
                                ), 
                              ),
                              new Padding(
                                  padding: EdgeInsets.only(top:20),
                                  child: Text("Tap to learn more !!!",style: TextStyle(fontSize: 15,color: Colors.redAccent,fontWeight: FontWeight.w800),),
                              )
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
                      elevation:0,            
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top:15.0),
                                child: Text(
                                  "CSS\n\nCSS stands for Cascading Style Sheets.\nCSS is used to define and design styles for web pages.",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black,fontWeight: FontWeight.w700,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                               new Padding(
                                  padding: EdgeInsets.only(top:20),
                                  child: Text("Tap to learn more !!!",style: TextStyle(fontSize: 15,color: Colors.redAccent,fontWeight: FontWeight.w800),),
                              )
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
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "PHP\n\nPHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages.",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w700,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                               new Padding(
                                  padding: EdgeInsets.only(top:20),
                                  child: Text("Tap to learn more !!!",style: TextStyle(fontSize: 15,color: Colors.redAccent,fontWeight: FontWeight.w800),),
                              )
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
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "JAVASCRIPT\n\nJavaScript is the programming language of HTML and the Web.\nJavaScript is easy to learn.",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w700,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                               new Padding(
                                  padding: EdgeInsets.only(top:20),
                                  child: Text("Tap to learn more !!!",style: TextStyle(fontSize: 15,color: Colors.redAccent,fontWeight: FontWeight.w800),),
                              )
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