import 'dart:io';

void main() {
  stdout.write('Siapa Nama Anda: ');
  String name = stdin.readLineSync()!;
  stdout.write('Apa Jurusan Anda: ');
  String major = stdin.readLineSync()!;
  print('Hallo $name, dari jurusan $major');
}
