import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'constant.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'description.dart';

class NewsFeedPage extends StatelessWidget {
  static String tag = "NewsFeedPage-tag";
  NewsFeedPage(this.text);
  final int text;

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    String title;
    if (text == 1) {
      title = "Top";
    } else if (text == 2) {
      title = "Business";
    } else if (text == 3) {
      title = "Entertainment";
    } else if (text == 4) {
      title = "Sports";
    } else if (text == 5) {
      title = "Technology";
    }
    return Scaffold(
      appBar: AppBar(
        title: new Text("$title Headlines",
            style: new TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: new SafeArea(
          child: new Column(
        children: [
          new Expanded(
            flex: 1,
            child: new Container(
                width: width,
                color: Colors.white,
                child: new InkWell(
                  child: new FutureBuilder<List<News>>(
                    future: fatchNews(
                        http.Client(), text), // a Future<String> or null
                    builder: (context, snapshot) {
                      if (snapshot.hasError) print(snapshot.error);

                      return snapshot.hasData
                          ? NewsList(news: snapshot.data)
                          : Center(child: CircularProgressIndicator());
                    },
                  ),
                )),
          ),
        ],
      )),
    );
  }
}

Future<List<News>> fatchNews(http.Client client, id) async {
  String url;
  if (id == 1) {
    url = Constant.baseurl +
        "top-headlines?country=in&apiKey=" +
        Constant.key;
  } else if (id == 2) {
    url = Constant.baseurl +
        "top-headlines?country=in&category=business&apiKey=" +
        Constant.key;
  } else if (id == 3) {
    url = Constant.baseurl +
        "top-headlines?country=in&category=entertainment&apiKey=" +
        Constant.key;
  } else if (id == 4) {
    url = Constant.baseurl +
        "top-headlines?country=in&category=sports&apiKey=" +
        Constant.key;
  } else if (id == 5) {
    url =
        Constant.baseurl + "top-headlines?country=in&category=technology&apiKey=" + Constant.key;
  }
  
  final response = await client.get(url);
  return compute(parsenews, response.body);
}

List<News> parsenews(String responsebody) {
  final parsed = json.decode(responsebody);
  return (parsed["articles"] as List)
      .map<News>((json) => new News.fromJson(json))
      .toList();
}

class News {
  String auther;
  String title;
  String description;
  String url;
  String urlToImage;

  News({this.auther, this.title, this.description, this.url,this.urlToImage});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      auther: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
    );
  }
}

class NewsList extends StatelessWidget {
  final List<News> news;

  NewsList({Key key, this.news,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    
      shrinkWrap: true,
      itemCount: news.length,
      itemBuilder: (context, index) {
        return new Card(  
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
             
          ),
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: new ListTile(
         leading: news[index].urlToImage != null ? Image.network(news[index].urlToImage,width: 70,height: 70,):Container(
           child: Image.asset('assets/icon.png'),
         ),
            title: Text(news[index].title,style: TextStyle(fontSize: 15),),   
            onTap: () {
              var url = news[index].url;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new DescriptionPage(url),
                  )
               );
            },
            
          ),
          
        );
      },
    );
  }
}
