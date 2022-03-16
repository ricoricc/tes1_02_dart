import 'dart:io';
//import 'dart:web_gl';
import 'fbuku.dart';
import 'fcd.dart';
import 'fproduct.dart';
import 'fcd.dart';

void main(List<String> arguments) {
  int inp = -1;
  //List<Product> products = [];
  List<Product> products = [];
  while (inp != 0) {
    print("-Menu-");
    print("1. Menambahkan Barang Baru");
    print("2. Menampilkan Sebuah Barang");
    print("3. Meletakkan Barang pada lokasi tertentu");
    print("4. Menampilkan seluruh barang pada lokasi tertentu");
    print(
        "5. Menampilkan n-data barang pertama dengan kisaran harga yang diinputkan");
    print("6. Pencarian data / item berdasarkan Title yang diinputkan");
    print("0. Exit");
    stdout.write("Pilih Opsi Menu: ");
    String? inpData = stdin.readLineSync();
    inp = int.parse(inpData!);
    if (inp == 1) {
      int dnp;
      print("1. CD");
      print("2. Book");
      print("3. Travel Guide");
      print("0. Back");
      stdout.write("Pilih Tipe Produk: ");
      String? dnpData = stdin.readLineSync();
      dnp = int.parse(dnpData!);
      if (dnp == 1) {
        stdout.write("Masukan ID: ");
        String? id = stdin.readLineSync();
        stdout.write("Masukan judul: ");
        String? title = stdin.readLineSync();
        stdout.write("Masukan deskripsi: ");
        String? desc = stdin.readLineSync();
        stdout.write("Masukan harga CD: ");
        String? priceData = stdin.readLineSync();
        int price = int.parse(priceData!);
        stdout.write("Masukan artis CD: ");
        String? artist = stdin.readLineSync();
        products.add(CD('CD', id!, title!, desc!, price, artist!));
        dnp = -1;
      }
      if (dnp == 2) {
        stdout.write("Masukan ID: ");
        String? id = stdin.readLineSync();
        stdout.write("Masukan judul: ");
        String? title = stdin.readLineSync();
        stdout.write("Masukan deskripsi: ");
        String? desc = stdin.readLineSync();
        stdout.write("Masukan harga buku: ");
        String? priceData = stdin.readLineSync();
        int price = int.parse(priceData!);
        stdout.write("Masukan ISBN buku: ");
        String? isbnData = stdin.readLineSync();
        int isbn = int.parse(isbnData!);
        stdout.write("Masukan author buku: ");
        String? author = stdin.readLineSync();
        products.add(Book('Book', id!, title!, desc!, price, isbn, author!));
        dnp = -1;
      }
      if (dnp == 3) {
        stdout.write("Masukan ID: ");
        String? id = stdin.readLineSync();
        stdout.write("Masukan judul: ");
        String? title = stdin.readLineSync();
        stdout.write("Masukan deskripsi: ");
        String? desc = stdin.readLineSync();
        stdout.write("Masukan harga buku: ");
        String? priceData = stdin.readLineSync();
        int price = int.parse(priceData!);
        stdout.write("Masukan ISBN Buku: ");
        String? isbnData = stdin.readLineSync();
        int isbn = int.parse(isbnData!);
        stdout.write("Masukan author buku: ");
        String? author = stdin.readLineSync();
        stdout.write("Masukan country buku: ");
        String? country = stdin.readLineSync();
        products.add(TravelGuide('Travel Guide', id!, title!, desc!, price,
            isbn, author!, country!));
        dnp = -1;
      }
    } else if (inp == 2) {
      stdout.write(
          "Masukan barang ke N yang ingin di tampilkan (min 0, max ${products.length}): ");
      String? inpData = stdin.readLineSync();
      int o = int.parse(inpData!);
      print("Barang ke -$o: ");
      products[0].show();
    } else if (inp == 3) {
      print("Masukan Barang yang ingin di letakan: ");
      int dnp;
      print("1. CD");
      print("2. Book");
      print("3. Travel Guide");
      print("0. Back");
      stdout.write("Pilih Tipe Produk: ");
      String? dnpData = stdin.readLineSync();
      dnp = int.parse(dnpData!);
      stdout.write("Masukan Lokasi Barang yang ingin di letakan (int dr 0): ");
      String? locbrgData = stdin.readLineSync();
      int locbrg = int.parse(locbrgData!);
      if (dnp == 1) {
        stdout.write("Masukan ID: ");
        String? id = stdin.readLineSync();
        stdout.write("Masukan judul: ");
        String? title = stdin.readLineSync();
        stdout.write("Masukan deskripsi: ");
        String? desc = stdin.readLineSync();
        stdout.write("Masukan harga CD: ");
        String? priceData = stdin.readLineSync();
        int price = int.parse(priceData!);
        stdout.write("Masukan artis CD: ");
        String? artist = stdin.readLineSync();
        products.insert(locbrg, CD('CD', id!, title!, desc!, price, artist!));
        dnp = -1;
      }
      if (dnp == 2) {
        stdout.write("Masukan ID: ");
        String? id = stdin.readLineSync();
        stdout.write("Masukan judul: ");
        String? title = stdin.readLineSync();
        stdout.write("Masukan deskripsi: ");
        String? desc = stdin.readLineSync();
        stdout.write("Masukan harga buku: ");
        String? priceData = stdin.readLineSync();
        int price = int.parse(priceData!);
        stdout.write("Masukan ISBN buku: ");
        String? isbnData = stdin.readLineSync();
        int isbn = int.parse(isbnData!);
        stdout.write("Masukan author buku: ");
        String? author = stdin.readLineSync();
        products.insert(
            locbrg, Book('Book', id!, title!, desc!, price, isbn, author!));
        dnp = -1;
      }
      if (dnp == 3) {
        stdout.write("Masukan ID: ");
        String? id = stdin.readLineSync();
        stdout.write("Masukan judul: ");
        String? title = stdin.readLineSync();
        stdout.write("Masukan deskripsi: ");
        String? desc = stdin.readLineSync();
        stdout.write("Masukan harga buku: ");
        String? priceData = stdin.readLineSync();
        int price = int.parse(priceData!);
        stdout.write("Masukan ISBN buku: ");
        String? isbnData = stdin.readLineSync();
        int isbn = int.parse(isbnData!);
        stdout.write("Masukan author buku: ");
        String? author = stdin.readLineSync();
        stdout.write("Masukan country buku: ");
        String? country = stdin.readLineSync();
        products.insert(
            locbrg,
            TravelGuide('Travel Guide', id!, title!, desc!, price, isbn,
                author!, country!));
        dnp = -1;
      }
    } else if (inp == 4) {
      print("Masukan lokasi barang yang ingin di lihat: ");
      stdout.write("dari index (min 0): ");
      String? aData = stdin.readLineSync();
      int a = int.parse(aData!);
      stdout.write("sampai index (max ${products.length}): ");
      String? bData = stdin.readLineSync();
      int b = int.parse(bData!);

      for (int i = a; i < b; i++) {
        print("Barang ke-$i: ");
        print("Object: ${products[i].obj} ");
        products[i].show();
      }
    } else if (inp == 5) {
      stdout.write("N-data barang pertama: ");
      String? NData = stdin.readLineSync();
      int N = int.parse(NData!);
      stdout.write("Batasan Harga (bawah): ");
      String? HBData = stdin.readLineSync();
      int HB = int.parse(HBData!);
      stdout.write("Batasan Harga (atas): ");
      String? HAData = stdin.readLineSync();
      int HA = int.parse(HAData!);

      for (int i = 0; i < products.length; i++) {
        if (N >= 0) {
          if (products[i].price >= HB && products[i].price <= HA) {
            print("Barang ke-$i: ");
            print("Object: ${products[i].obj} ");
            products[i].show();
          }
        }
        N--;
      }
    } else if (inp == 6) {
      stdout.write("Masukan judul yang ingin dicari: ");
      String? title = stdin.readLineSync();
      for (int i = 0; i < products.length; i++) {
        if (products[i].title == title) {
          print("Barang ke-$i: ");
          print("Object: ${products[i].obj} ");
          products[i].show();
        }
      }
    }
  }
}
