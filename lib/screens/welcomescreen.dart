import 'package:flutter/material.dart';
import 'package:flutter_hava/style/style.dart';
class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({this.konumhava});
  final konumhava;
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  
  String sehir;
  int derece;
  String durum;
  @override
  void initState() {
    super.initState();
    infoToUI(widget.konumhava);
  }

  void infoToUI(dynamic havabilgisi) {
    
    double drc = havabilgisi['main']['temp'];
    derece = drc.toInt();

    
    sehir = havabilgisi['name'];
    if(sehir == "Mountain View") {
      sehir = "Dağlık Bir Bölgedesiniz";
    }
  }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Column(children: [

        Container (
          
           margin: EdgeInsets.fromLTRB(15, 200, 0, 20),
          child :Row( children: [
            Text(
              ' ${derece}°C',
              style: derecetext,
              
              ),


          ],
        ),
        
        
        ),

        Container(margin: EdgeInsets.fromLTRB(5, 0, 0, 30) ,child: Row(children: [ Text('Bulunduğunuz Konum :',style: infotext,)],),),
        Container(margin: EdgeInsets.only(left:20),child: Row(children: [ Text(sehir , style: sehirtext,)],),)
      ],),
      
    ));
  }
}

