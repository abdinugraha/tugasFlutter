import 'dart:io';

List<Map<String, String>> bookshelf = [];

void main() async {
  while (true) {
    print('\n=== MENU ===');
    print('1. Add Book');
    print('2. Show Books');
    print('3. Search Book');
    print('4. Exit');
    stdout.write('Pilih menu (1/2/3/4): ');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      await addBook();
    } else if (choice == '2') {
      showBooks();
    } else if (choice == '3') {
      searchBook();
    } else if (choice == '4') {
      print('Program dihentikan.');
      break;
    } else {
      print('Pilihan tidak valid. Silakan coba lagi.');
    }
  }
}

Future<void> addBook() async {
  stdout.write('\nMasukkan judul buku: ');
  String? title = stdin.readLineSync();

  stdout.write('Masukkan jumlah halaman: ');
  String? page = stdin.readLineSync();

  stdout.write('Masukkan nama penulis: ');
  String? author = stdin.readLineSync();

  if (title != null && page != null && author != null) {
    Map<String, String> newBook = {
      'title': title,
      'page': page,
      'author': author
    };

    await Future.delayed(Duration(seconds: 1));

    bookshelf.add(newBook);
    print('Buku berhasil ditambahkan!\n');
  } else {
    print('Data tidak valid. Silakan coba lagi.');
  }
}

void showBooks() {
  if (bookshelf.isEmpty) {
    print('\nRak Buku kosong.');
  } else {
    print('\n=== Daftar Buku ===');
    for (var i = 0; i < bookshelf.length; i++) {
      print('Buku ${i + 1}');
      print('Judul: ${bookshelf[i]['title']}');
      print('Halaman: ${bookshelf[i]['page']}');
      print('Penulis: ${bookshelf[i]['author']}\n');
    }
  }
}

void searchBook() {
  stdout.write('\nMasukkan judul buku yang ingin dicari: ');
  String? searchTitle = stdin.readLineSync();

  if (searchTitle != null) {
    List<Map<String, String>> foundBooks = bookshelf.where((book) {
      return book['title']!.toLowerCase().contains(searchTitle.toLowerCase());
    }).toList();

    if (foundBooks.isEmpty) {
      print('Buku dengan judul "$searchTitle" tidak ditemukan.');
    } else {
      print('\n=== Hasil Pencarian ===');
      for (var book in foundBooks) {
        print('Judul: ${book['title']}');
        print('Halaman: ${book['page']}');
        print('Penulis: ${book['author']}\n');
      }
    }
  } else {
    print('Input tidak valid. Silakan coba lagi.');
  }
}
