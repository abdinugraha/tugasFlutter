void main() {
  // Data siswa disimpan dalam List of Map
  List<Map<String, String>> dataSiswa = [
    {'Nama': 'Andi', 'Hobby': 'Bermain Sepak Bola'},
    {'Nama': 'Budi', 'Hobby': 'Membaca Buku'},
    {'Nama': 'Citra', 'Hobby': 'Menggambar'},
    {'Nama': 'Dewi', 'Hobby': 'Bersepeda'},
    {'Nama': 'Eka', 'Hobby': 'Menari'}
  ];

  // Menampilkan data siswa
  print('=== Data Siswa ===');
  for (var siswa in dataSiswa) {
    print('Nama: ${siswa['Nama']}, Hobby: ${siswa['Hobby']}');
  }
}
