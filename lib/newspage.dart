import 'package:flutter/material.dart';
import 'widget/News_widget/newsfeeds.dart';
import 'widget/News_widget/description.dart';
import 'widget/News_widget/aajtak.dart';
import 'widget/News_widget/ndtv.dart';
import 'widget/News_widget/zeenews.dart';
import 'widget/News_widget/indiatv.dart';
import 'widget/News_widget/abpnews.dart';
import 'widget/News_widget/news24.dart';
import 'widget/News_widget/cnnnews.dart';
import 'widget/News_widget/patrika.dart';
import 'widget/News_widget/bhaskar.dart';

class NewsApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    DescriptionPage.tag: (context) => DescriptionPage(null),
    NewsFeedPage.tag: (context) => NewsFeedPage(null)
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
    );
  }
}

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("News",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
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
        padding: const EdgeInsets.all(10),
              child: new Center(
                child: new GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                    childAspectRatio: 1.5,
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
                                padding: EdgeInsets.only(top: 10),
                              ),
                              Image.network(
                                "http://www.dailydigest.ng/wp-content/uploads/2017/06/TOP-NEWS.jpg",
                                alignment: Alignment.center,
                                width: 70.0,
                                height: 30.0,
                              ),
                              new Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  "Top Headlines",
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w700,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          var id = 1;
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new NewsFeedPage(id),
                              ));
                        },
                      )),
                  new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                      elevation: 10.0,
                      child: new InkWell(
                        child: new Container(
                          child: new Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                              ),
                              Image.network(
                                "https://bloximages.chicago2.vip.townnews.com/goskagit.com/content/tncms/assets/v3/editorial/6/7f/67ff3e82-e13b-5493-b0ee-20ee221eae6e/5b75ab77f1c5e.image.jpg?resize=750%2C555",
                                alignment: Alignment.center,
                                width: 70.0,
                                height: 30.0,
                              ),
                              new Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("Business",
                                    style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w700,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          var id = 2;
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new NewsFeedPage(id),
                              ));
                        },
                      )),
                  new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                      elevation: 10.0,
                      child: new InkWell(
                        child: new Container(
                          child: Column(
                            children: <Widget>[
                               new Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                              Image.network(
                                "https://whitesalmonspringfestival.com/springfest/wp-content/uploads/EntertainmentBanner.jpg",
                                alignment: Alignment.center,
                               width: 70.0,
                                height: 25.0,
                              ),
                              new Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("Entertainment",
                                   style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w700,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          var id = 3;
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new NewsFeedPage(id),
                              ));
                        },
                      )),
                  new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 10.0,
                    child: new InkWell(
                      child: new Container(
                        child: Column(
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            Image.network(
                              "https://www.hindustantimes.com/rf/image_size_960x540/HT/p2/2019/09/15/Pictures/india-v-australia-odi-series-game-3_bab7b9cc-d776-11e9-bf18-74205beb354d.jpg",
                              alignment: Alignment.center,
                             width: 80.0,
                                height: 25.0,
                            ),
                            new Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("Sports",
                                 style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w700,),
                                  textAlign: TextAlign.center,
                                ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        var id = 4;
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new NewsFeedPage(id),
                            ));
                      },
                    ),
                  ),
                  new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                      elevation: 10.0,
                      child: new InkWell(
                        child: new Container(
                          child: new Column(
                            children: <Widget>[
                              Image.network(
                                "http://www.thedigitalbridges.com/wp-content/uploads/2017/12/technology-news-top-stories-768x576.jpg",
                                alignment: Alignment.center,
                              width: 50.0,
                                height: 50.0,
                              ),
                              new Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text("Technology",
                                   style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w700,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          var id = 5;
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new NewsFeedPage(id),
                              ));
                        },
                      )),
                      new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 10.0,
                    child: new InkWell(
                      child: new Container(
                        child: Column(
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            Image.network(
                              "https://smedia2.intoday.in/aajtak/at_2.21.11.19/resources/theme_v2/common/images/homeLogo.png",
                              alignment: Alignment.center,
                             width: 30.0,
                                height: 25.0,
                            ),
                            new Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("Aajtak",
                                 style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w700,),
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
                        builder: (BuildContext context) => new Aajtak(),
                  )
               );
                      },
                    ),
                  ),

                  new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 10.0,
                    child: new InkWell(
                      child: new Container(
                        child: Column(
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            Image.network(
                              "https://drop.ndtv.com/ndtv/alerts/logo/ndtv.png",
                              alignment: Alignment.center,
                             width: 30.0,
                                height: 25.0,
                            ),
                            new Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("NDTV News",
                                 style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w700,),
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
                        builder: (BuildContext context) => new NDTV(),
                  )
               );
                      },
                    ),
                  ),
                  new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 10.0,
                    child: new InkWell(
                      child: new Container(
                        child: Column(
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            Image.network(
                              "https://english.cdn.zeenews.com/images/logo/zeenewslogo_nav.png",
                              alignment: Alignment.center,
                             width: 30.0,
                                height: 25.0,
                            ),
                            new Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("ZEE News",
                                 style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w700,),
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
                        builder: (BuildContext context) => new ZEENEWS(),
                  )
               );
                      },
                    ),
                  ),

                  new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 10.0,
                    child: new InkWell(
                      child: new Container(
                        child: Column(
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            Image.network(
                              "https://static.indiatvnews.com/ins-web/images/sitelogo.png",
                              alignment: Alignment.center,
                             width: 70.0,
                              height: 25.0,
                            ),
                            new Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("INDIA TV",
                                 style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w700,),
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
                        builder: (BuildContext context) => new INDIATV(),
                  )
               );
                      },
                    ),
                  ),
               new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 10.0,
                    child: new InkWell(
                      child: new Container(
                        child: Column(
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            Image.network(
                              "https://static.abplive.in/wp-content/themes/abp-hindi/images/logo/hindiLogoD.png",
                              alignment: Alignment.center,
                             width: 70.0,
                              height: 25.0,
                            ),
                            new Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("ABP NEWS",
                                 style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w700,),
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
                        builder: (BuildContext context) => new ABPNEWS(),
                  )
               );
                      },
                    ),
                  ),

                   new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 10.0,
                    child: new InkWell(
                      child: new Container(
                        child: Column(
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/News24_Logo.jpg/150px-News24_Logo.jpg",
                              alignment: Alignment.center,
                             width: 70.0,
                              height: 25.0,
                            ),
                            new Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("NEWS24",
                                 style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w700,),
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
                        builder: (BuildContext context) => new NEWS24(),
                  )
               );
                      },
                    ),
                  ),

                   new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 10.0,
                    child: new InkWell(
                      child: new Container(
                        child: Column(
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            Image.network(
                              "https://images.news18.com/static_news18/pix/ibnhome/news18/megamenu/news18-main.png",
                              alignment: Alignment.center,
                             width: 70.0,
                              height: 25.0,
                            ),
                            new Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("CNN-News18",
                                 style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w700,),
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
                        builder: (BuildContext context) => new CNNNEWS(),
                  )
               );
                      },
                    ),
                  ),

                   new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 10.0,
                    child: new InkWell(
                      child: new Container(
                        child: Column(
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            Image.network(
                              "http://www.indusos.com/wp-content/uploads/2016/03/Patrika.png",
                              alignment: Alignment.center,
                             width: 50.0,
                              height: 25.0,
                            ),
                            new Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("Patrika NEWS",
                                 style: TextStyle(
                                      fontSize: 13.0, color: Colors.black,fontWeight: FontWeight.w700,),
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
                        builder: (BuildContext context) => new PATRIKA(),
                  )
                   );
                      },
                    ),
                  ),

 new Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 10.0,
                    child: new InkWell(
                      child: new Container(
                        child: Column(
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.all(10.0),
                            ),
                            Image.network(
                              "http://www.bestmediainfo.com/wp-content/uploads/2015/07/Dainik-Bhaskar-Logo.jpg",
                              alignment: Alignment.center,
                             width: 50.0,
                              height: 25.0,
                            ),
                            new Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text("Dainik Bhaskar",
                                 style: TextStyle(
                                      fontSize: 14.0, color: Colors.black,fontWeight: FontWeight.w700,),
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
                        builder: (BuildContext context) => new Bhaskar(),
                  )
                   );
                      },
                    ),
                  ),
                ],
              )),
            ),
          ),
        ],
       )), );
  }}