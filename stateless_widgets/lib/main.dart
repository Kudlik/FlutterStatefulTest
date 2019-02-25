import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    // Define the theme, set the primary swatch
    theme: new ThemeData(primarySwatch: Colors.yellow),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Declare some constants
    final double myTextSize = 15.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle =
        new TextStyle(color: Colors.grey, fontSize: myTextSize);

    var column = new Column(
      // Makes the cards stretch in horizontal axis
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Setup the card
        new MyCard(
            icon: new Icon(Icons.today, size: myIconSize, color: Colors.lightGreen),
            // Setup the icon
            title: new Text(
              "Dzisiejszy Cino z okazji:",
              style: myTextStyle,
            )),


        new MyCard(
            title: new Text(
              "Hasło na dziś:",
              style: myTextStyle,
            ),
            icon: new Icon(Icons.announcement, size: myIconSize, color: Colors.blue)),
        new MyCard(
            title: new Text(
              "Ciekawostka z dupy:",
              style: myTextStyle,
            ),
            icon: new Icon(Icons.info_outline,
                size: myIconSize, color: Colors.red)),
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Daily Cino QAlendar"),
      ),
      body: new Container(
        // Sets the padding in the main container
        padding: const EdgeInsets.only(bottom: 2.0),
        child: new Center(
          child: new SingleChildScrollView(child: column),
        ),
      ),
    );
    ;
  }
}

// Create a reusable stateless widget
class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;


  // Constructor. {} here denote that they are optional values i.e you can use as: new MyCard()
  MyCard({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            children: <Widget>[this.icon, this.title],
          ),
        ),
      ),
    );
  }
}
