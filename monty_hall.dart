//based on tv show aired in 90s

import 'dart:math';

void main() {
  // it is convention to name const in Dart with all capital letters
  // multi-word Dart const should be written with underscores (_) between the words => ex. THIS_IS_A_CONSTANT
  const int TRIALS = 1000000;

  int correct = 0;

  Random rand = new Random();

  for (int i = 0; i < TRIALS; i++) {
    // we're adding 1 to insure that we get num 3 as well => because nextInt() returns the total - 1
    int randDoor = rand.nextInt(3) + 1; //random door 1 - 3
    int guess = 1; // we guess door 1
    int eliminated;

    if (randDoor == 2) {
      eliminated = 3; //door 3 eliminated
    } else if (randDoor == 3) {
      eliminated = 2; //door 2 eliminated
    } else {
      //randDoor must be 1
      eliminated = rand.nextInt(2) + 2; //door 2 or 3 randomly eliminated
    }

    if (eliminated == 2) {
      guess = 3; //switch our guess to door 3
    } else if (eliminated == 3) {
        guess = 2;  //switch our guess to door 2
    }

    if (guess == randDoor) {
        correct++;
    }
  }
    print("The percentage of correct guesses was ${(correct / TRIALS) * 100}%");
}

//another type of division is integer division, where the result of two integers divided is also an integer; the result is rounded down. 
//for example, 3/2 is equal to 1 in integer division. to perform integer division in dart, use the ~/ operator