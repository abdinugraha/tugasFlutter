import 'dart:io';

void main() {
  while (true) {
    print('\n=== MENU ===');
    print('1. Check Palindrome');
    print('2. Exit');
    stdout.write('Pilih menu (1/2): ');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write('\nMasukkan sebuah string: ');
      String? input = stdin.readLineSync();
      if (input != null) {
        bool isPalindrome = checkPalindrome(input);
        if (isPalindrome) {
          print('String "$input" adalah palindrome.');
        } else {
          print('String "$input" bukan palindrome.');
        }
      }
    } else if (choice == '2') {
      print('Program dihentikan.');
      break;
    } else {
      print('Pilihan tidak valid. Silakan coba lagi.');
    }
  }
}

bool checkPalindrome(String input) {
  String cleanedInput = input.replaceAll(RegExp(r'\s+'), '').toLowerCase();
  String reversedInput = cleanedInput.split('').reversed.join('');
  return cleanedInput == reversedInput;
}
