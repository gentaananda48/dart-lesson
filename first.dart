import 'dart:io';

// This program prompts the user for their name and major, then prints a greeting message including their name and major.
void main() {
  stdout.write('Siapa nama anda: ');
  String name = stdin.readLineSync()!;

  stdout.write('Apa jurusan anda: ');
  String major = stdin.readLineSync()!;

  print('Hallo $name, dari jurusan $major');
}
