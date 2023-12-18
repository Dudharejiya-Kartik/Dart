import 'dart:io';
class Supermarket{
  late int customer_id;
  late String customer_name;
  late int customer_number;

  void setCustomerData(){
    stdout.write("Enter Customer Id:");
    customer_id = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Customer Name:");
    customer_name = stdin.readLineSync()!;

    stdout.write("Enter Customer Number:");
    customer_number = int.parse(stdin.readLineSync()!);
  }

  void getCustomerData(){
    print("\nCustomer Id\t: $customer_id");
    print("Customer Name\t: $customer_name");
    print("Customer Number\t: $customer_number");
  }

}

class product{
  late int pro_id;
  late String pro_name;
  late int quantity;
  late int price;

}

void main(){
  int n;

  stdout.write("Enter Number Of Customer:");
  n = int.parse(stdin.readLineSync()!);

  List obj =List.generate(n, (index) => Supermarket());
  obj.forEach((e) {
    e.setCustomerData();
  });

  obj.forEach((e) {
    e.getCustomerData();
  });




}