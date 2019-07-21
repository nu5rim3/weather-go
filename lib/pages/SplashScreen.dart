import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_weather/pages/IntroScreen.dart';
import 'package:flutter_weather/util/NavigationService.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => {
              // print('splash done!'),
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IntroScreen()),
              )
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[400],
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Container(
          //   decoration: BoxDecoration(color: Colors.cyan[400])
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 100.0,
                        child: Icon(
                          Icons.wb_sunny,
                          color: Colors.yellow[400],
                          size: 100.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        'Weather Go',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      'Version 0.0.2 Beta',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
