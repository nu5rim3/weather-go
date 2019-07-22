import 'package:flutter/material.dart';
import 'package:flutter_weather/pages/HomeScreen.dart';
import 'package:flutter_weather/pages/IntroScreen.dart';
import 'package:flutter_weather/pages/SplashScreen.dart';

var routes = <String, WidgetBuilder>{
  // "/home": (BuildContext context) => HomeScreen(),
  "/intro": (BuildContext context) => IntroScreen(),
};

void main() => runApp(MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.lightBlue[900],
          accentColor: Colors.yellowAccent),
      // home: SplashScreen(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => SplashScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/Intro': (context) => IntroScreen(),
        '/Home': (context) => HomeScreen(),
      },
    ));
