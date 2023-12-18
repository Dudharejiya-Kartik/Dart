import 'dart:io';

class Supermarket{
  int? item_no;
  String? item_name;
  int? quantity;
  double? tax;
  double? discount;

  void setadditem()
  {
    stdout.write("Enter Item No:");
    item_no=int.parse(stdin.readLineSync()!);

    stdout.write("Enter Iteam Name:");
    item_name=stdin.readLineSync()!;

    stdout.write("Enter Item Quantity:");
    quantity= int.parse(stdin.readLineSync()!);

    stdout.write("Enter Item Tax:");
    tax=double.parse(stdin.readLineSync()!);
    
    stdout.write("Enter Item Discount:");
    discount=double.parse(stdin.readLineSync()!);
  }

  void getDisplayrecord(){
    print("\n\nItem No\t: $item_no");
    print("Item Name\t: $item_name");
    print("Quantity\t: $quantity");
    print("Tax\t\t: $tax");
    print("Discount\t: $discount");
  }

}

void main(){
     stdout.write("Enter User Id:");
     String userid=stdin.readLineSync()!;

    stdout.write("Enter Password:");
    String password=stdin.readLineSync()!;
    if(userid=="user" && password=="user123"){
    }
    else{
      print("\nInvalid User Id or Password");
    }

    int n;

    stdout.write("Enter Number Of Items:");
    n=int.parse(stdin.readLineSync()!);

    List objs = List.generate(n, (index) => Supermarket());
    objs.forEach((e) {
      e.setadditem();
     });

     objs.forEach((e) {

      e.getDisplayrecord();
     });

     int no;

     stdout.write("Enter The Item Number For Search:");
     no=int.parse(stdin.readLineSync()!);

     objs.forEach((e) {
      if(e.item_no==no){
        e.getDisplayrecord();
      }
      else{
        print("\nItem Not Found");
      }
     });
}