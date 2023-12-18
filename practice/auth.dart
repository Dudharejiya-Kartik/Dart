import 'dart:io';

class Account{
  late String email;
  late String password;
  late int i,length,upper,lower,digit,special;
}

class User extends Account{
  void setuserdata(){
    stdout.write("Enter Email: ");
    email = stdin.readLineSync()!;

    stdout.write("Enter Password: ");
    password = stdin.readLineSync()!;
    int length=0;

   for(int i=0;i <length ;i++){
    if(email.contains('@')){
      print("Email is valid");
  }
  else if(email.contains('A-Z')){
    print("Email is valid");
  }
  else if(email.contains('a-z')){
    print("Email is valid");
  }
  else if(email.contains('0-9')){
    print("Email is valid");
  }
  else if(email.contains('.')){
    print("Email is valid");
  }
  else {
    print("Email is invalid");
  }

  if(email.endsWith("@gmail.com")){
    print("Email is valid");
  }
  else{
    print("Email is invalid");
  }

  if(password.contains("a-z")){
    lower = 1;
  }
  else if(password.contains("A-Z")){
    upper = 1;
  }
  else if(password.contains('0-9')){
    digit = 1;
  }
  else if(password.contains('!-@-#-&-%-^-')){
    special = 1;
  }
  else{
    print("Password is invalid");
  }
   }
   if(length>=8 && upper>=1 && lower>=1 && digit>=1 && special>=1){
    print("Password is valid");
   }
   else{
    print("Password is invalid");
   }
  }
  
  void getuserdata(){
    print("Email: $email");
    print("Password: $password");
  }
}
void main() {
  User user = User();
  user.setuserdata();
  user.getuserdata();
  
}