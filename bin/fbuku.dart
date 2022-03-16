import 'fproduct.dart';

class Buku extends Product {
  int isbn = 0;
  String author = '-';

  Buku(String obj, int id, String title, String desc, int price,
      String location, int isbn, String author)
      : super(obj, id, title, desc, price, location) {
    this.isbn = isbn;
    this.author = author;
  }
}

class TravelGuide extends Buku {
  String country = '-';

  TravelGuide(String obj, int id, String title, String desc, String location,
      int price, int isbn, String author, String country)
      : super(obj, id, title, desc, price, location, isbn, author) {
    this.country = country;
  }
}
