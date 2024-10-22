void main() {
  // Menentukan jumlah perulangan
  for (int i = 1; i <= 100; i++) {
    // Jika kelipatan 3 dan 5
    if (i % 3 == 0 && i % 5 == 0) {
      print('Remote Worker');
    }
    // Jika kelipatan 3
    else if (i % 3 == 0) {
      print('Remote');
    }
    // Jika kelipatan 5
    else if (i % 5 == 0) {
      print('Worker');
    }
    // Jika bukan kelipatan 3 atau 5
    else {
      print(i);
    }
  }
}
