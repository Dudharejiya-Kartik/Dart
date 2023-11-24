import 'dart:io';

void main() {
  List employes = [];

  for (var i=1; i<=3; i++)
  {
    print("Enter Information For Employes $i:");

    print("Enter ID:");
    var id = stdin.readLineSync()!;
    print("Enter Name:");
    var name = stdin.readLineSync()!;
    print("Enter Age:");
    var age =  int.parse(stdin.readLineSync()!);
    print("Enter Salary:");
    var salary = double.parse(stdin.readLineSync()!);

    employes.add(MapEntry('employes $i',
    {'id': id, 
    'name': name, 
    'age': age, 
    'salary': salary}));
  }

  for (var entry in employes)
  {
    print("\n employe ${entry.key} Information");
    var employesInfo = entry.value;
    employesInfo.forEach((key,value) {
      print("$key : $value");
    });
  }
}