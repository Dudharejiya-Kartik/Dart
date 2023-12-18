List getUniqueNames(List names) => names.toSet().toList();

void main() {
  List<String> inputNames = ["Kartik", "Jenish", "Mann", "Kartik", "Mayur", "Tushar"];
  
  // Calling the function and printing the result
  List uniqueNames = getUniqueNames(inputNames);
  print("Original Names: $inputNames");
  print("Unique Names: $uniqueNames");
}
