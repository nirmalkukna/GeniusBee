import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class DescriptionPage extends StatelessWidget {
  static String tag = 'description-page';
  DescriptionPage(this.urlnews);
  final String urlnews;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Full News",
          style: new TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: new WebviewScaffold(
                      url: urlnews,
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



  