import 'package:geolocator/geolocator.dart';

// Konum servislerimiz burada yer alacak 
class Konum {
  // Koordinat düzlemleri için enlem ve boylam
  // tutacak değişkenleri double olarak tanımladık.
  double lat,long;
  
  


  Future<void>konumBul() async {
    try {
      //Pozisyon oluşturuyoruz.
        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
        // Konumun enlem ve boylamlarını tanıttık
        lat = position.latitude;
        long = position.longitude;
    }
    // Hata yakalamak
    catch(e) {
      print(e);
    }
  }
}