import 'dart:io';

class Student{
  late int rollno;
  late String name;
  late String course;

  Student({required this.rollno,required this.name,required this.course}){}

  factory Student.fromMap({required Map data}){
    return Student(
      rollno: data['rollno'],
      name: data['name'],
      course: data['course'],   
    );
  }

  void getStudentData(){
    print("\nrollno\t: $rollno");
    print("name\t: $name");
    print("course\t: $course");
  }
}

void main(){
  List <Map> StudentData = [
    { "rollno": 1, "name":"Kartik", "course":"Flutter" "\n"},
    { "rollno": 2, "name":"Jenish", "course":"Flutter" "\n"},
    { "rollno": 3, "name":"Mann", "course":"Flutter" "\n"},
    { "rollno": 4, "name":"Mayur", "course":"Flutter" "\n"},
    { "rollno": 5, "name":"Tushar", "course":"Flutter" "\n"},
    { "rollno": 6, "name":"Rohit", "course":"Flutter" "\n"},
    { "rollno": 7, "name":"Bhargav", "course":"Flutter" "\n"},
    { "rollno": 8, "name":"Pragnesh", "course":"Flutter" "\n"},
    { "rollno": 9, "name":"Mahesh", "course":"Flutter" "\n"},
    { "rollno": 10, "name":"Gautam", "course":"Flutter" "\n"},
    { "rollno": 11, "name":"Chetan", "course":"Flutter" "\n"},
    { "rollno": 12, "name":"Mehul", "course":"Flutter" "\n"},
    { "rollno": 13, "name":"Rakesh", "course":"Flutter" "\n"},
    { "rollno": 14, "name":"Sagar", "course":"Flutter" "\n"},
    { "rollno": 15, "name":"Bhavin", "course":"Flutter" "\n"},
    { "rollno": 16, "name":"Yogesh", "course":"Flutter" "\n"},
    { "rollno": 17, "name":"Sailesh", "course":"Flutter" "\n"},
    { "rollno": 18, "name":"Nishith", "course":"Flutter" "\n"},
    { "rollno": 19, "name":"Akshay", "course":"Flutter" "\n"},
    { "rollno": 20, "name":"Ronak", "course":"Flutter" "\n"},
    { "rollno": 21, "name":"Vishal", "course":"Flutter" "\n"},
    { "rollno": 22, "name":"Nirmal", "course":"Flutter" "\n"},
    { "rollno": 23, "name":"Viraj", "course":"Flutter" "\n"},
    { "rollno": 24, "name":"Sandip", "course":"Flutter" "\n"},
    { "rollno": 25, "name":"Aniket", "course":"Flutter" "\n"},
    { "rollno": 26, "name":"Vipul", "course":"Flutter" "\n"},
    { "rollno": 27, "name":"Durgesh", "course":"Flutter" "\n"},
    { "rollno": 28, "name":"Mental", "course":"Flutter" "\n"},
    { "rollno": 29, "name":"Bhago", "course":"Flutter" "\n"},
    { "rollno": 30, "name":"Maylo", "course":"Flutter" "\n"},
  ];

  List<Student> AllStudentData = StudentData.map((e) => Student.fromMap(data:e)).toList();
  AllStudentData.forEach((e) {
    e.getStudentData();
   });
}