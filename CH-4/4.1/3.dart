import 'dart:io';

int addition(int num1, int num2) {
 return num1 + num2;
}

int subtraction(int num1, int num2) {
 return num1 - num2;
}

int multiplication(int num1, int num2) {
 return num1 * num2;
}

double division(int num1, int num2) {
 return num1 / num2;
}

int module(int num1, int num2){
  return num1 % num2; 
}

void main() {
  int num1, num2, choice;

  stdout.write("Enter Number1:");
  num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Number2:");
  num2 = int.parse(stdin.readLineSync()!);

  do {
    print("Enter......\n1.Sum\n2.Sub\n3.Mul\n4.Div\n5.Mod\n6.Exit\nEnter Your Choice:");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Sum:");
        print("Result:=${addition(num1, num2)}");
        break;

      case 2:
        print("Sub:");
        print("Result:=${subtraction(num1, num2)}");
        break;

      case 3:
        print("Mul:");
        print("Result:=${multiplication(num1, num2)}");
        break;

      case 4:
        print("Div:");
        print("Result:=${division(num1, num2)}");
        break;

      case 5:
        print("Mod:");
        print("Result:=${module(num1, num2)}");
        break;

      default:
        print("Invalid Choice");
        break;
    }
  } while (choice != 6);
}
