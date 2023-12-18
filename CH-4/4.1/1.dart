

import 'dart:io';
import 'dart:io';

int cube(int num)
{
	return num*num*num;
}

void main()
{
	int result,Number;

	stdout.write("Enter Number: ");
  Number=int.parse(stdin.readLineSync()!);
  result = cube(Number);
  stdout.write("The cube of $Number is $result");

}
