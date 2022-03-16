class Product {
  String _obj = '-';
  int _id = 0;
  String _title = '-';
  String _desc = '-';
  int _price = 0;
  String _location = '-';

  Product(this._obj, this._id, this._title, this._desc, this._price,
      this._location);

  set obj(String n) {
    _obj = n;
  }

  set id(int n) {
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

  set location(String n) {
    _location = n;
  }

  String get obj => this._obj!;
  int get id => this._id!;
  String get title => this._title!;
  String get desc => this._desc!;
  int get price => this._price!;
  String get location => this._location!;
}
