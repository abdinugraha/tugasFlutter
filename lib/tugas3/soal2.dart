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

// Fungsi utama
void main() {
  // Membuat objek Persegi
  Square square = Square(4);
  square.displayInfo();

  // Membuat objek Lingkaran
  Circle circle = Circle(5);
  circle.displayInfo();

  // Membuat objek Persegi Panjang
  Rectangle rectangle = Rectangle(6, 3);
  rectangle.displayInfo();

  // Membuat objek Kubus
  Cube cube = Cube(3);
  cube.displayInfo();

  // Membuat objek Tabung
  Cylinder cylinder = Cylinder(4, 7);
  cylinder.displayInfo();
}
