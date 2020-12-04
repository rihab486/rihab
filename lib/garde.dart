import 'dart:async';

import 'package:flutter/material.dart';
import 'main.dart';

class Pagegarde extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Pagegarde> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: NetworkImage(
                  'https://i.pinimg.com/564x/8c/81/ae/8c81ae53161b2217edcef012502f0940.jpg'),
            ),
            Padding(padding: EdgeInsets.all(25.0)),
          ],
        ),
      ),
    );
  }
}
