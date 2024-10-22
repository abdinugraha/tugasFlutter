import 'dart:io';

// Abstract class untuk mendefinisikan kerangka umum Geometri
abstract class Geometry {
  String name;

  Geometry(this.name);

  // Method untuk menampilkan informasi tentang objek geometri
  void displayInfo() {
    print('\n=== $name ===');
  }
}

// Abstract class turunan untuk bangun datar (2D)
abstract class Shape2D extends Geometry {
  Shape2D(String name) : super(name);

  // Method abstrak untuk menghitung luas
  double calculateArea();

  // Method abstrak untuk menghitung keliling
  double calculatePerimeter();
}

// Abstract class turunan untuk bangun ruang (3D)
abstract class Shape3D extends Geometry {
  Shape3D(String name) : super(name);

  // Method abstrak untuk menghitung volume
  double calculateVolume();
}

// Implementasi Bangun Datar (Persegi)
class Square extends Shape2D {
  double side;

  Square(this.side) : super('Persegi');

  @override
  double calculateArea() {
    return side * side;
  }

  @override
  double calculatePerimeter() {
    return 4 * side;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Sisi: $side');
    print('Luas: ${calculateArea()}');
    print('Keliling: ${calculatePerimeter()}');
  }
}

// Implementasi Bangun Datar (Lingkaran)
class Circle extends Shape2D {
  double radius;

  Circle(this.radius) : super('Lingkaran');

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14 * radius;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Jari-jari: $radius');
    print('Luas: ${calculateArea()}');
    print('Keliling: ${calculatePerimeter()}');
  }
}

// Implementasi Bangun Datar (Persegi Panjang)
class Rectangle extends Shape2D {
  double length, width;

  Rectangle(this.length, this.width) : super('Persegi Panjang');

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Panjang: $length, Lebar: $width');
    print('Luas: ${calculateArea()}');
    print('Keliling: ${calculatePerimeter()}');
  }
}

// Implementasi Bangun Ruang (Kubus)
class Cube extends Shape3D {
  double side;

  Cube(this.side) : super('Kubus');

  @override
  double calculateVolume() {
    return side * side * side;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Sisi: $side');
    print('Volume: ${calculateVolume()}');
  }
}

// Implementasi Bangun Ruang (Tabung)
class Cylinder extends Shape3D {
  double radius, height;

  Cylinder(this.radius, this.height) : super('Tabung');

  @override
  double calculateVolume() {
    return 3.14 * radius * radius * height;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Jari-jari: $radius, Tinggi: $height');
    print('Volume: ${calculateVolume()}');
  }
}

// Fungsi utama untuk Kalkulator Geometri
void main() {
  while (true) {
    print('\n=== Kalkulator Geometri ===');
    print('1. Kalkulator Bangun Datar');
    print('2. Kalkulator Bangun Ruang');
    print('3. Exit');
    stdout.write('Pilih menu (1/2/3): ');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      kalkulatorBangunDatar();
    } else if (choice == '2') {
      kalkulatorBangunRuang();
    } else if (choice == '3') {
      print('Program dihentikan.');
      break;
    } else {
      print('Pilihan tidak valid. Silakan coba lagi.');
    }
  }
}

// Fungsi untuk kalkulator bangun datar
void kalkulatorBangunDatar() {
  while (true) {
    print('\n=== Kalkulator Bangun Datar ===');
    print('1. Persegi');
    print('2. Lingkaran');
    print('3. Persegi Panjang');
    print('4. Kembali ke Menu Utama');
    stdout.write('Pilih bangun datar (1/2/3/4): ');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write('Masukkan panjang sisi persegi: ');
      double? side = double.tryParse(stdin.readLineSync()!);
      if (side != null && side > 0) {
        Square square = Square(side);
        square.displayInfo();
      } else {
        print('Input tidak valid.');
      }
    } else if (choice == '2') {
      stdout.write('Masukkan jari-jari lingkaran: ');
      double? radius = double.tryParse(stdin.readLineSync()!);
      if (radius != null && radius > 0) {
        Circle circle = Circle(radius);
        circle.displayInfo();
      } else {
        print('Input tidak valid.');
      }
    } else if (choice == '3') {
      stdout.write('Masukkan panjang: ');
      double? length = double.tryParse(stdin.readLineSync()!);
      stdout.write('Masukkan lebar: ');
      double? width = double.tryParse(stdin.readLineSync()!);
      if (length != null && width != null && length > 0 && width > 0) {
        Rectangle rectangle = Rectangle(length, width);
        rectangle.displayInfo();
      } else {
        print('Input tidak valid.');
      }
    } else if (choice == '4') {
      break;
    } else {
      print('Pilihan tidak valid. Silakan coba lagi.');
    }
  }
}

// Fungsi untuk kalkulator bangun ruang
void kalkulatorBangunRuang() {
  while (true) {
    print('\n=== Kalkulator Bangun Ruang ===');
    print('1. Kubus');
    print('2. Tabung');
    print('3. Kembali ke Menu Utama');
    stdout.write('Pilih bangun ruang (1/2/3): ');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write('Masukkan panjang sisi kubus: ');
      double? side = double.tryParse(stdin.readLineSync()!);
      if (side != null && side > 0) {
        Cube cube = Cube(side);
        cube.displayInfo();
      } else {
        print('Input tidak valid.');
      }
    } else if (choice == '2') {
      stdout.write('Masukkan jari-jari tabung: ');
      double? radius = double.tryParse(stdin.readLineSync()!);
      stdout.write('Masukkan tinggi tabung: ');
      double? height = double.tryParse(stdin.readLineSync()!);
      if (radius != null && height != null && radius > 0 && height > 0) {
        Cylinder cylinder = Cylinder(radius, height);
        cylinder.displayInfo();
      } else {
        print('Input tidak valid.');
      }
    } else if (choice == '3') {
      break;
    } else {
      print('Pilihan tidak valid. Silakan coba lagi.');
    }
  }
}
