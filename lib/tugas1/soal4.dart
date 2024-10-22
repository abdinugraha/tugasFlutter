import 'dart:io';

void main() {
  double saldo = 0.0;
  bool running = true;

  while (running) {
    print('======================');
    print('Selamat datang di E-Wallet');
    print('======================');
    print('Pilih menu:');
    print('1. Cek Saldo');
    print('2. Top Up');
    print('3. Belanja');
    print('4. Keluar');
    print('======================');
    print('Masukkan pilihan Anda:');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        // Cek Saldo
        print('Saldo Anda saat ini adalah: Rp $saldo');
        break;

      case '2':
        // Top Up
        print('Masukkan jumlah top up:');
        String? topUpInput = stdin.readLineSync();
        try {
          double topUpAmount = double.parse(topUpInput!);
          if (topUpAmount > 0) {
            saldo += topUpAmount;
            print('Top up berhasil. Saldo Anda sekarang: Rp $saldo');
          } else {
            print('Jumlah top up harus lebih dari 0.');
          }
        } catch (e) {
          print('Input tidak valid. Harap masukkan angka.');
        }
        break;

      case '3':
        // Belanja
        print('Masukkan jumlah belanja:');
        String? belanjaInput = stdin.readLineSync();
        try {
          double belanjaAmount = double.parse(belanjaInput!);
          if (belanjaAmount > 0) {
            if (belanjaAmount <= saldo) {
              saldo -= belanjaAmount;
              print('Belanja berhasil. Sisa saldo Anda: Rp $saldo');
            } else {
              print('Saldo tidak mencukupi untuk belanja.');
            }
          } else {
            print('Jumlah belanja harus lebih dari 0.');
          }
        } catch (e) {
          print('Input tidak valid. Harap masukkan angka.');
        }
        break;

      case '4':
        // Keluar
        print('Terima kasih telah menggunakan E-Wallet.');
        running = false;
        break;

      default:
        print('Pilihan tidak valid. Harap pilih menu yang tersedia.');
    }

    // Jeda sebelum menampilkan menu lagi
    if (running) {
      print('\nTekan Enter untuk melanjutkan...');
      stdin.readLineSync();
    }
  }
}
