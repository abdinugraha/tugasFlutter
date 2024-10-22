import 'dart:io';

void main() {
  while (true) {
    stdout.write('Masukkan tinggi piramida (bilangan bulat positif): ');
    String? input = stdin.readLineSync();
    int? tinggi = int.tryParse(input!);

    if (tinggi != null && tinggi > 0) {
      print('\n=== Piramida ===');
      for (int i = 1; i <= tinggi; i++) {
        // Menampilkan spasi
        stdout.write(' ' * (tinggi - i));
        // Menampilkan bintang
        stdout.write('*' * (2 * i - 1));
        print('');
      }
      break;
    } else {
      print('Input tidak valid. Masukkan bilangan bulat positif.');
    }
  }
}
