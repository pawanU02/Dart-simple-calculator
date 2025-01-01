/// A Simple console based Calculator using Dart

import 'dart:io';

void main () {
  print("Welcome to the calculator");
  print("\n");
  
  // take neber inputs
  stdout.write("Enter number (n1): ");
  double? n1 = double.parse(stdin.readLineSync()!); // ! --> tells the compiler that the value is not null, even though variable is nullable

  stdout.write("Enter number (n2): ");
  double? n2 = double.parse(stdin.readLineSync()!);

  stdout.write("Select an operator (+  -  /  *):  ");
  String? operator = stdin.readLineSync()!;

  // now the conditios
  if (operator == "+") {
    print("Result: $n1 + $n2 = ${n1 + n2}");
  } else if (operator == "-") {
    print("Resulr: $n1 - $n2 = ${n1 - n2}");
  } else if (operator == "*") {
    print("Resulr: $n1 * $n2 = ${n1 * n2}");
  } else if (operator == "/") {
    if (n2 != 0) {
      print("Result: $n1 / $n2 = ${n1 / n2}");
    } else {
      print("Error: Division by zero is not allowed");
    }
  } else {
    print("Invalid operator. Try again!!");
  }
}