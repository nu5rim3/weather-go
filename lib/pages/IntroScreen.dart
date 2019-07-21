import 'package:flutter/material.dart';
import 'package:flutter_weather/util/NavigationService.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: 
            Container(
              child: Text(
              'Hello Intro',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900),
            ),
            )

          ),
        ],
      ),
    );
  }
}
