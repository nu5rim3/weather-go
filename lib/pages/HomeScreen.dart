import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_weather/models/WeatherModel.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;

  Future<Weather> getWeather(city) async {
    final response = await http.get(
        Uri.encodeFull(
            'https://api.apixu.com/v1/current.json?key=b7444d2f1d0f42819d042414192207&q=' +
                city),
        headers: {"Accept": "application/json"});
    if (response.statusCode == 200) {
      print(response.body);
      return Weather.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: RaisedButton(
      //     child: Text("Show Me Weather"),
      //     onPressed: () => getWeather('China'),
      //   ),
      // ),
      body: Center(
        child: FutureBuilder<Weather>(
          future: getWeather('Sri%20lanka'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              //checks if the response returns valid data
              return Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 100.0),
                    ),
                    Image.network(
                      'http:${snapshot.data.conditionIcon}',
                      fit: BoxFit.cover,
                      height: 150.0,
                      width: 150.0,
                    ),
                    Text(
                      snapshot.data.location,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900),
                    ), //displays the quote
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "${snapshot.data.tempc} C",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300),
                    ), //displays the quote's author
                    Text(
                      "${snapshot.data.conditionText}",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300),
                    ), //displays the quote's author
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              //checks if the response throws an error
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
