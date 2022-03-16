import 'fproduct.dart';

class CD extends Product {
  String artist = '-';

  CD(String obj, int id, String title, String desc, int price, String location,
      String artist)
      : super(obj, id, title, desc, price, location) {
    this.artist = artist;
  }
}
