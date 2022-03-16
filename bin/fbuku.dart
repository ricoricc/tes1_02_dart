import 'fproduct.dart';
import 'productExtention.dart';

class Book extends Product implements Ext {
  int isbn = 0;
  String author = '-';

  Book(String obj, String id, String title, String desc, int price, int isbn,
      String author)
      : super(obj, id, title, desc, price) {
    this.isbn = isbn;
    this.author = author;
  }

  @override
  void show() {
    print("Id: $id");
    print("Title: $title");
    print("Description: $desc");
    print("Price: \$$price");
    print("ISBN: $isbn");
    print("Author: $author");
  }
}

class TravelGuide extends Book implements Ext {
  String country = '-';

  TravelGuide(String obj, String id, String title, String desc, int price,
      int isbn, String author, String country)
      : super(obj, id, title, desc, price, isbn, author) {
    this.country = country;
  }

  @override
  void show() {
    print("Id: $id");
    print("Title: $title");
    print("Description: $desc");
    print("Price: \$$price");
    print("ISBN: $isbn");
    print("Author: $author");
    print("Country: $country");
  }
}
