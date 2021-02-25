import 'package:flutter/material.dart';
import 'package:flutter_hava/screens/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: IntroScreen(),
    );
  }
}





/*
api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=52d14cbea81050e8cacfaf403c0fa9f8
*/