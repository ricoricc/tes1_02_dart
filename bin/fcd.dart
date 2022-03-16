import 'fproduct.dart';
import 'productExtention.dart';

class CD extends Product implements Ext {
  String artist = '-';

  CD(String obj, String id, String title, String desc, int price, String artist)
      : super(obj, id, title, desc, price) {
    this.artist = artist;
  }

  @override
  void show() {
    print("Id: $id");
    print("Title: $title");
    print("Description: $desc");
    print("Price: \$$price");
    print("Artist: $artist");
  }
}
