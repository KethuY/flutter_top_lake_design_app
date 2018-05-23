import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      decoration: new BoxDecoration(
        color: Colors.transparent,
        borderRadius: new BorderRadius.all(
            new Radius.circular(5.0),
        ),
      ),
      padding: new EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  "Oeschinen Lake Campground",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Text(
                "Kandersteg, Switzerland",
                style: new TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          )),
          new Icon(
            Icons.star,
            color: Colors.amberAccent,
          ),
          new Text("41"),
        ],
      ),
    );

    Column addColoumn(IconData ic, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            ic,
            color: color,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0,
                  color: color,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      decoration: new BoxDecoration(color: Colors.white),
      padding: new EdgeInsets.all(16.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          addColoumn(Icons.call, "CALL"),
          addColoumn(Icons.near_me, "ROUTE"),
          addColoumn(Icons.share, "SHARE"),
        ],
      ),
    );

    Widget textSection = new Container(
      decoration: new BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
      Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
      ''',
        softWrap: true,
      ),
    );

    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Top Lake'),
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset(
                'lake.jpg',
                width: 600.0,
                height: 240.0,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          ),
        ));
  }
}
