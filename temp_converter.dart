//the formula for converting temp
// F = 1.8C + 32
// C = (F – 32) / 1.8

import 'dart:io';

void main() {

  print("A: Convert Celsius to Fehrenheit\nB: Convert Fahrenheit to Celsius");

  String selection;

  do {
    // get user input and change case to uppercase
    selection = stdin.readLineSync().toUpperCase();
  } while(selection != "A" && selection != "B"); //keep doing this shit if the user didnt enter A / B

  print("Enter the starting temperature:");

  // wait for user input and store it var
  String inputTemp = stdin.readLineSync();

  // convert user input to initeger
  int temp = int.parse(inputTemp);

  switch (selection) {
    case "A":
      print("$temp degrees Celsius is ${temp * 1.8 + 32} degrees Fahrenheit");
      break;
    case "B":
      print("$temp degrees Fahrenheit is ${(temp -32) + 1.8} degrees Celsius");
      break;
    default:
      break;
  }
}