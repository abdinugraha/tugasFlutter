import 'dart:io';
import 'dart:math';

void main() {
  // Menghasilkan angka acak antara 1 dan 100
  Random random = Random();
  int correctNumber = random.nextInt(100) + 1;

  int attempts = 0; // Jumlah percobaan
  bool isCorrect = false;

  print('Selamat datang di permainan "Guess the Number"!');
  print('Tebak angka dari 1 hingga 100.');

  // Loop sampai user menebak dengan benar
  while (!isCorrect) {
    print('Masukkan tebakan Anda:');
    String? input = stdin.readLineSync();

    // Cek apakah input valid dan bukan null
    if (input != null) {
      try {
        // Konversi input ke integer
        int guess = int.parse(input);

        // Cek apakah tebakan dalam rentang yang valid
        if (guess < 1 || guess > 100) {
          print('Input tidak valid. Harap masukkan angka antara 1 hingga 100.');
          continue; // Lanjut ke loop berikutnya tanpa menambah percobaan
        }

        // Tambah jumlah percobaan
        attempts++;

        // Cek apakah tebakan benar
        if (guess == correctNumber) {
          print('Selamat! Jawaban Anda benar.');
          print('Angka yang benar adalah $correctNumber.');
          print('Anda menebak dengan $attempts percobaan.');
          isCorrect = true; // Set untuk keluar dari loop
        } else if (guess > correctNumber) {
          print('Tebakan Anda terlalu besar. Coba lagi.');
        } else {
          print('Tebakan Anda terlalu kecil. Coba lagi.');
        }
      } catch (e) {
        // Jika input bukan angka, tampilkan pesan error
        print('Input tidak valid. Harap masukkan angka yang benar.');
      }
    }
  }
}
