import 'dart:io';

void main() {
  print('Masukkan sebuah angka:');
  String? input = stdin.readLineSync();

  if (input != null) {
    try {
      int number = int.parse(input);

      if (number % 2 == 0) {
        print('$number adalah bilangan genap.');
      } else {
        print('$number adalah bilangan ganjil.');
      }
    } catch (e) {
      print('Input tidak valid. Harap masukkan angka yang benar.');
    }
  } else {
    print('Tidak ada input yang dimasukkan.');
  }
}
