import 'dart:io';

void main()
{
  int sumOfAllElements = 0;
  int operation=-1;
 List<List<int>> array = [];
 
  do {
 print('Please enter the number of operation you want to perform:');
 print('1. Sum of all elements');
 print('2. Sum of specific row');
 print('3. Sum of specific column');
 print('4. Sum of diagonal elements');
 print('5. Sum of antidiagonal elements');

 stdout.write("Enter Your Choice:");
 int operation = int.parse(stdin.readLineSync()!);

 switch (operation) {
    case 1:
            stdout.write('Enter the length of the array: ');
            String input = stdin.readLineSync()!;
             int len = int.parse(input);

             List<int> arr = [];

                for (int i = 0; i < len; i++) {
                 stdout.write('Enter element ${i + 1}: ');
                 input = stdin.readLineSync()!;
                 arr.add(int.parse(input));
                  }

                 int sum = 0;

              for (int i = 0; i < arr.length; i++) {
              sum += arr[i];
               }

              print("Sum of all elements in array: $sum");
              
      break;
    case 2:
print('Enter the size of array:');
 int n = int.parse(stdin.readLineSync()!);

 print('Enter the array elements:');
 List<int> arr = [];
 for (int i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
 }

 print('Enter the row number:');
 int k = int.parse(stdin.readLineSync()!);

 int sum = 0;

 if (k < 1) {
    print('Row number should be greater than or equal to 1');
 } else {
    for (int i = 0; i < n; i++) {
      if (i % k == 0) {
        sum += arr[i];
      }
    }

    print('The sum of elements of row number $k is: $sum');
 }
      break;
    case 3:
        print("Enter the column number:");
        int columnNumber = int.parse(stdin.readLineSync()!);
        int sumOfColumn = 0;
        for (int i = 0; i < 3; i++)
        {
          sumOfColumn += array[i][columnNumber - 1];
        }
        print("Sum of column $columnNumber: $sumOfColumn");
        break;
    case 4:
        int sumOfDiagonal = 0;
        for (int i = 0; i < 3; i++)
        {
          sumOfDiagonal += array[i][i];
        }
        print("Sum of diagonal:$sumOfDiagonal");
        break;

    case 5:
        int sumofAntiDiagonal = 0;
        for (int i = 0; i < 3; i++)
        {
          for (int j = 0; j < 3; j++)
          {
            if (i+j == ((3+1)-2))
            {
              sumofAntiDiagonal += array[i][j];
            }
          }
        }
        print("The Sum Of Anti-Diagonal Is:$sumofAntiDiagonal");
        break;
      default:
        print("Invalid Choice");
        break;
      }
  }while(operation!=0);
 
}
