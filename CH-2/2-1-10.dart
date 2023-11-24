import 'dart:io';

void main() {
  int a;

  stdout.write("Enter A Number:");
  a = int.parse(stdin.readLineSync()!);

  if (a % 2 == 0) {
    print("Number Is Even");
  } else {
    print("Number Is ODD");
  }
}
