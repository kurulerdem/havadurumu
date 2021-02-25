import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HavaDurumu {

  HavaDurumu({this.url});
  final String url;
  Future getWeather() async {
   http.Response response =  await http.get(url);

    if(response.statusCode == 200){
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData; 
    } else {
              print(response.statusCode);
            }  

      return CircularProgressIndicator();
    }

  }
