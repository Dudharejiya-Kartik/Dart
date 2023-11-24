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
      for (int i = 0; i < 3; i++) 
      {
       for (int j = 0; j < 3; j++)
        {
           List<int> row = [];
           for (int j = 0; j < 3; j++) 
          {
             int num = int.parse(stdin.readLineSync()!);
             row.add(num);
             sumOfAllElements += num;
          }
          array.add(row);
        }
      }
      print('Sum of all elements: $sumOfAllElements');
      break;
    case 2:
        print('Enter the row number:');
        int rowNumber = int.parse(stdin.readLineSync()!);
        int sumOfRow = array[rowNumber - 1].reduce((a, b) => a + b);
        print('Sum of row $rowNumber: $sumOfRow');
      
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
