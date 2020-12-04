import 'package:ex4/garde.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'pages/page1.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';
import 'pages/page4.dart';

void main() => runApp(MaterialApp(
      home: Pagegarde(),
    ));

class MyApp extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<MyApp> {
  int cur = 0;

  get http => null;
  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Pageone();
      case 1:
        return Pagetow();
      case 2:
        return Pagethree();
      case 3:
        return Pagefore();
      case 4:
        return Pagegarde();

        break;
      default:
        return Pageone();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "weather apps",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: new Icon(Icons.settings, color: Colors.black),
        actions: <Widget>[
          new Icon(Icons.search, color: Colors.black),
        ],
        backgroundColor: Colors.grey,
      ),
      body: callPage(cur),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cur,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('Carte'),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Acceuil'),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              title: Text('Horaire'),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment),
              title: Text('Métégramme'),
              backgroundColor: Colors.grey),
        ],
        onTap: (index) {
          setState(() {
            cur = index;
          });
        },
      ),
    );
  }
}
