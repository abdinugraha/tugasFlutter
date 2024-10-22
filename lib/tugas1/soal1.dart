import 'dart:io';

void main() {
  // Meminta input dari user
  print('Masukkan sebuah angka:');
  String? input = stdin.readLineSync();

  // Cek apakah input null atau bukan angka
  if (input != null) {
    // Coba konversi input ke integer
    try {
      int number = int.parse(input);

      // Cek apakah angka ganjil atau genap
      if (number % 2 == 0) {
        print('$number adalah bilangan genap.');
      } else {
        print('$number adalah bilangan ganjil.');
      }
    } catch (e) {
      // Jika input bukan angka, tangkap error
      print('Input tidak valid. Harap masukkan angka yang benar.');
    }
  } else {
    print('Tidak ada input yang dimasukkan.');
  }
}
