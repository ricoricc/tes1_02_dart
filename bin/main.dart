import 'dart:io';
import 'fproduct.dart';

void main(List<String> arguments) {
  int inp = 0;

  int num = 0;
  while (inp < 5) {
    print("1. Menambahkan Barang Baru");
    print("2. Menampilkan Sebuah Barang");
    print("3. Meletakkan Barang pada lokasi tertentu");
    print("4. Menampilkan seluruh barang pada lokasi tertentu");
    print("5. Exit");
    stdout.write("Pilih Opsi Menu: ");
    String? iData = stdin.readLineSync();
    inp = int.parse(iData!);
  }
}
