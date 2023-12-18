import 'dart:io';
import 'dart:math';
class Student{
  int? stud_rollnu;
  String? stud_name;
  double? stud_per;
  int? stud_age;


  void setData(){
    stdout.write("Enter Student Roll Number:");
    stud_rollnu = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Student Name:");
    stud_name = stdin.readLineSync()!;

    stdout.write("Enter Student Age:");
    stud_age = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Student Percentage:");
    stud_per = double.parse(stdin.readLineSync()!);

  }

  void getData(){
    print("\n\nStud RollNu\t: $stud_rollnu");
    print("Stud Name\t: $stud_name");
    print("Stud Age\t: $stud_age");
    print("Stud Percentage\t: $stud_per");
  }
}

void main(){
  int n;

  stdout.write("Enter Student Number: ");
  n = int.parse(stdin.readLineSync()!);

  List objs = List.generate(n, (index) => Student()); 
  objs.forEach((e) {
    e.setData();
  });

  objs.forEach((e) {
    e.getData();
   });
}