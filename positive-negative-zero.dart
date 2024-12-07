import 'dart:io';

void main() {
  print("Enter a number: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    int? number = int.tryParse(input);
    if (number != null) {
      if (number > 0) {
        print("The number is positive.");
      } else if (number < 0) {
        print("The number is negative.");
      } else {
        print("The number is zero.");
      }
    } else {
      print("Invalid input. Please enter a valid number.");
    }
  } else {
    print("No input provided.");
  }
}
