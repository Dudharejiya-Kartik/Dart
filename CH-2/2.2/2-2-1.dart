import 'dart:io';

void main{

  List a=List.generate(3, (index) => "${index + 1} Hello");
  print(a);
}