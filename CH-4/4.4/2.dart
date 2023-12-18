import 'dart:io';

class Employe{
  late String? name;
  late int salary;
  late String? address;
  late String? designation;


  Employe({required this.name,required this.salary,required this.address,required this.designation}){}

  factory Employe.fromMap({required Map data}){
    return Employe(
      name: data['name'],
      salary: data['salary'],
      address: data['address'], 
      designation: data['designation']
    );
  }

  void getEmployeData(){
    print("\nEmploye Name \t: $name");
    print("Employe Salary\t: $salary");
    print("Employe Address\t: $address");
    print("Employe Designation\t: $designation");
  }
}

void main(){
  List <Map> EmployeData = [
 {"name":"ayush","salary":20000,"address":"surat","designation":"admin"},
{"name":"mehul","salary":10000,"address":"surat","designtion":"subadmin"},
{"name":"piyush","salary":2000,"address":"surat","designation":"admin"},
{"name":"ramesh","salary":3000,"address":"surat","desgnation":"subadmin"},
{"name":"ayush","salary":20000,"address":"surat","designation":"admin"},
{"name":"mehul","salary":10000,"address":"surat","designtion":"subadmin"},
{"name":"piyush","salary":2000,"address":"surat","designation":"admin"},
{"name":"ramesh","salary":3000,"address":"surat","desgnation":"subadmin"},
{"name":"ayush","salary":20000,"address":"surat","designation":"admin"},
{"name":"mehul","salary":10000,"address":"surat","designtion":"subadmin"},
{"name":"piyush","salary":2000,"address":"surat","designation":"admin"},
{"nam":"ramesh","salary":3000,"address":"surat","desgnation":"subadmin"},
{"name":"ayush","salary":20000,"address":"surat","designation":"admin"},
{"name":"mehul","salary":10000,"address":"surat","designtion":"subadmin"},
{"name":"piyush","salary":2000,"address":"surat","designation":"admin"},
{"name":"ramesh","salary":3000,"address":"surat","desgnation":"subadmin"},
{"name":"ayush","salary":20000,"address":"surat","designation":"admin"},
{"name":"mehul","salary":10000,"address":"surat","designtion":"subadmin"},
{"name":"piyush","salary":2000,"address":"surat","designation":"admin"},
{"name":"ramesh","salary":3000,"address":"surat","desgnation":"subadmin"},
{"name":"piyush","salary":2000,"address":"surat","designation":"admin"},
{"nam":"ramesh","salary":3000,"address":"surat","desgnation":"subadmin"},
{"name":"ayush","salary":20000,"address":"surat","designation":"admin"},
{"name":"mehul","salary":10000,"address":"surat","designtion":"subadmin"},
{"name":"piyush","salary":2000,"address":"surat","designation":"admin"},
{"name":"ramesh","salary":3000,"address":"surat","desgnation":"subadmin"},
{"name":"ayush","salary":20000,"address":"surat","designation":"admin"},
{"name":"mehul","salary":10000,"address":"surat","designtion":"subadmin"},
{"name":"piyush","salary":2000,"address":"surat","designation":"admin"},
{"name":"ramesh","salary":3000,"address":"surat","desgnation":"subadmin"},
 ];

  List<Employe> AllEmployeData = EmployeData.map((e) => Employe.fromMap(data:e)).toList();
  AllEmployeData.forEach((e) {
    e.getEmployeData();
   });
}