import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ZEENEWS extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "ZEE NEWS",
          style: new TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: new WebviewScaffold(
                      url: "https://zeenews.india.com/",  
                      hidden: true,
                      withJavascript: true,
                      withZoom: true,
                      initialChild: Container(
                        child: const Center(
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.deepPurpleAccent,
                            
                          ),
                        ),
                      ), 
                    ),
    );
  }
}



  