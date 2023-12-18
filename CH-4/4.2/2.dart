import 'dart:io';
class train{
  int? Train_no;
  String? Train_name;
  String? Source;
  String? Destination;
  int? Time;

  void setData()
  {
    stdout.write("Enter Train No:");
    Train_no=int.parse(stdin.readLineSync()!);

    stdout.write("Enter Train Name:");
    Train_name=stdin.readLineSync();

    stdout.write("Enter Train Source:");
    Source=stdin.readLineSync();

    stdout.write("Enter Destination:");
    Destination=stdin.readLineSync();

    stdout.write("Enter Train Time:");
    Time=int.parse(stdin.readLineSync()!);
  }

  void getData(){
    print("\n\nTrain No\t: $Train_no");
    print("Train Name\t: $Train_name");
    print("Source\t\t: $Source");
    print("Destination\t: $Destination");
    print("Time\t\t: $Time");

  }
}

void main(){

   int n;

  stdout.write("Enter The Number Of Train: ");
  n = int.parse(stdin.readLineSync()!);

  List objs = List.generate(n, (index) => train()); 
  objs.forEach((e) {
    e.setData();
  });

  objs.forEach((e) {
    e.getData();
   });

   int No;

   stdout.write("Enter Train Number:");
   No=int.parse(stdin.readLineSync()!);

   objs.forEach((e) {
    if(e.Train_no==No){
      e.getData();
    }
   });
}