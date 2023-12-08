import 'dart:io';

void main() {
 List matrix1 = List.generate(3, (i) => List.generate(3, (j) => 0));
 List matrix2 = List.generate(3, (i) => List.generate(3, (j) => 0));
 List result = List.generate(3, (i) => List.generate(3, (j) => 0));

  stdout.write("Enter Array Size:");
  int length= int.parse(stdin.readLineSync()!);

 for (int i = 0; i < length; i++) {
    for (int j = 0; j < length; j++) {
      stdout.write("Enter the elements of the first matrix:");
      matrix1[i][j] = int.parse(stdin.readLineSync()!);
    }
 }

 
 for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write("Enter the elements of the second matrix:");
      matrix2[i][j] = int.parse(stdin.readLineSync()!);
    }
 }

 for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      result[i][j] = matrix1[i][j] + matrix2[i][j];
    }
 }

 stdout.write("The Sum Of Matrix Are:\n");
 for (int i = 0; i < 3; i++) {
   for (int j = 0; j < 3; j++){
    print(result[i][j]);
   }
  print("\n");
 }
}
