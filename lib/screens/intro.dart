import 'package:flutter/material.dart';
import 'package:flutter_hava/models/konum.dart';
import 'package:flutter_hava/models/havadurumu.dart';
import 'package:flutter_hava/screens/welcomescreen.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';
class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

double enlem;
 double boylam;

  @override
  void initState() {
    super.initState();
    konumAl();
  }


  void konumAl() async{
    Konum konum = Konum();
    await konum.konumBul();
    enlem = konum.lat;
    boylam = konum.long;
    final String url ='https://api.openweathermap.org/data/2.5/weather?lat=$enlem&lon=$boylam&appid=52d14cbea81050e8cacfaf403c0fa9f8&units=metric';
    HavaDurumu havaDurumu = HavaDurumu(url: url);
    var havabilgisi = await havaDurumu.getWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return WelcomeScreen(konumhava: havabilgisi,);
    }));
    // Bilgilerin yüklenmesini bekleyeceğiz ...

  }



   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Loading(indicator: BallPulseIndicator(),
      size: 100.0, color: Colors.pink,),)
    
    );
  }

}