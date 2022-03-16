import 'productExtention.dart';

abstract class Product implements Ext {
  String _obj = '-';
  String _id = '-';
  String _title = '-';
  String _desc = '-';
  int _price = 0;

  Product(this._obj, this._id, this._title, this._desc, this._price);

  set obj(String n) {
    _obj = n;
  }

  set id(String n) {
    _id = n;
  }

  set title(String n) {
    _title = n;
  }

  set desc(String n) {
    _desc = n;
  }

  set price(int n) {
    _price = n;
  }

  String get obj => this._obj;
  String get id => this._id;
  String get title => this._title;
  String get desc => this._desc;
  int get price => this._price;

  @override
  void show() {}
}
