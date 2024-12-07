import 'dart:io';

void main() {
  var vowels = ["u", "e", "o", "a", "i"];

  print("Enter a character: ");
  String? character = stdin.readLineSync();

  if (character != null && character.length == 1) {
    if (vowels.contains(character.toLowerCase())) {
      print("$character is a vowel");
    } else {
      print("$character is not a vowel)");
    }
  } else {
    print("Invalid input. Please enter a single character.");
  }
}
