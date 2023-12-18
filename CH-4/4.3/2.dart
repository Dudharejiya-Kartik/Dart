import 'dart:io';

class Car {
  int? model_no;
  String? model_name;
  String? color;

  void inputCarAtributes() {
    stdout.write("Enter car model number: ");
    model_no = int.parse(stdin.readLineSync()!);
    stdout.write("Enter car Name: ");
    model_name = stdin.readLineSync()!;
    stdout.write("Enter car Color: ");
    color = stdin.readLineSync()!;
  }

  void outputCarAtributes() {
    print("Car Model Number : $model_no");
    print("Car Model Name : $model_name");
    print("Car Model Color : $color");
  }
}

void main() {
  Car car = Car();

  car
    ..inputCarAtributes()
    ..outputCarAtributes();
}