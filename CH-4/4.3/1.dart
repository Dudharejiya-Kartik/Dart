class Distance {
 int feet;
 int inches;

 Distance({required this.feet, required this.inches});

 void convertFeetInchesToInches() {
    int totalInches = (feet * 12) + inches;
    feet = totalInches ~/ 12;
    inches = totalInches % 12;
 }

  void getoutput(){
    print("Distance in feet is $feet and in inches is $inches");
  }
}

void main() {
 Distance d = Distance(feet: 5, inches: 15);
 d.convertFeetInchesToInches();
 d.getoutput();
}