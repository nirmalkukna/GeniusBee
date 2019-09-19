import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class NDTV extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "NDTV",
          style: new TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: new WebviewScaffold(
                      url: "https://www.ndtv.com",  
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



  