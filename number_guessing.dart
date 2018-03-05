import 'dart:math'; //for dealing with math
import 'dart:io'; //for dealing with input devices => ex. keyboard

void main() {

  int guess; //holds the guess num

  // create a random number generator
  Random rand = new Random();

  // gets a random integer from 0 to 99
  //nextInt() method finds an integer between 0 and one below the integer that it takes as an argument
  //nextInt(11) would find a random integer between 0 and 10
  int answer = rand.nextInt(100);

  do {
    print("Enter your guess: ");

    // read in from the keyboard
    //stdin is a built-in object of the dart:io package used for reading input from standard input
    // readLineSync() pauses the program until the user presses the Return (Enter) key
    String temp = stdin.readLineSync();

    // convert string to integer
    // int.parse() converts a string into an integer
    guess = int.parse(temp);

    if(guess < answer) {
      print("Too Low!");
    } else if(guess > answer) {
      print("Too High!");
    }
  } while (guess != answer); //keep doing this shit as long as the answer is wrong

  // when the answer is correct
  print("You got it!");
}