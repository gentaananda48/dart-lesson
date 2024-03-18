import 'dart:io';

class TemperatureConverter {
  double fahrenheitToCelsius(double fahrenheit) {
    return (5 / 9) * (fahrenheit - 32);
  }

  double reamurToCelsius(double reamur) {
    return (5 / 4) * reamur;
  }

  double kelvinToCelsius(double kelvin) {
    return kelvin - 273.15;
  }
}

// Main function for temperature conversion with a menu for different temperature scales.
void main() {
  var converter = TemperatureConverter();

  while (true) {
    print('\nMenu Konversi Suhu:');
    print('1. Fahrenheit ke Celsius');
    print('2. Reamur ke Celsius');
    print('3. Kelvin ke Celsius');
    print('4. Keluar');
    stdout.write('Pilih menu (1/2/3/4): ');

    var input = stdin.readLineSync();
    if (input == null) {
      break;
    }

    switch (input) {
      case '1':
        stdout.write('Masukkan suhu dalam Fahrenheit: ');
        var fahrenheit = double.parse(stdin.readLineSync()!);
        var celsius =
            converter.fahrenheitToCelsius(fahrenheit).toStringAsFixed(1);
        print('$fahrenheit derajat Fahrenheit = $celsius derajat Celsius');
        break;
      case '2':
        stdout.write('Masukkan suhu dalam Reamur: ');
        var reamur = double.parse(stdin.readLineSync()!);
        var celsius = converter.reamurToCelsius(reamur).toStringAsFixed(1);
        print('$reamur derajat Reamur = $celsius derajat Celsius');
        break;
      case '3':
        stdout.write('Masukkan suhu dalam Kelvin: ');
        var kelvin = double.parse(stdin.readLineSync()!);
        var celsius = converter.kelvinToCelsius(kelvin).toStringAsFixed(1);
        print('$kelvin derajat Kelvin = $celsius derajat Celsius');
        break;
      case '4':
        exit(0);
        break;
      default:
        print('Pilihan tidak valid. Silakan pilih lagi.');
        break;
    }
  }
}
