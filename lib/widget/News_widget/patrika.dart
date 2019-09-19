import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class PATRIKA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "PATRIKA",
          style: new TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: new WebviewScaffold(
                      url: "https://www.patrika.com/rajasthan-news/",
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



  