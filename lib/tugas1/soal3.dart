import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int correctNumber = random.nextInt(100) + 1;

  int attempts = 0; // Jumlah percobaan
  bool isCorrect = false;

  print('Selamat datang di permainan "Guess the Number"!');
  print('Tebak angka dari 1 hingga 100.');

  while (!isCorrect) {
    print('Masukkan tebakan Anda:');
    String? input = stdin.readLineSync();

    if (input != null) {
      try {
        int guess = int.parse(input);

        if (guess < 1 || guess > 100) {
          print('Input tidak valid. Harap masukkan angka antara 1 hingga 100.');
          continue;
        }

        attempts++;

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
        print('Input tidak valid. Harap masukkan angka yang benar.');
      }
    }
  }
}
