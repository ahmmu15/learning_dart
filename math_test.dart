import "dart:math";
import "dart:io";

void main() {

  Random rand = new Random();

  //It is possible to declare more than one variable of the same type at a time
  int correctAnswer, userAnswer, operand1, operand2, operation; //all ints
  int questionsAttempted = 0, numCorrect =0; //ints intialized

  //infinite loop
  while(true) {
    operation = rand.nextInt(3); //random number 0, 1, or 2
    operand1 = rand.nextInt(11); //random number 0-10
    operand2 = rand.nextInt(11); //random number 0-10

    //create math questions
    switch (operation) {
      case 0: //addition question
        print("$operand1 + $operand2 = ");
        correctAnswer = operand1 + operand2;
        break;
      case 1: //subtraction question
        print("$operand1 - $operand2 = ");
        correctAnswer = operand1 - operand2;
        break;
      case 2: //multiplication question
        print("$operand1 * $operand2 = ");
        correctAnswer = operand1 * operand2;
        break;
      default:
        break;
    }

    //get user input and turn it to int
    String inTemp = stdin.readLineSync();

    //stop the loop if user input can't be parsed
    try {
      userAnswer = int.parse(inTemp);
    } on FormatException { //uh oh, could not be turned into integer
      print("Thanks for playing!");
      print("You got $numCorrect out of $questionsAttempted correct.");
      break;
    }

    if (userAnswer == correctAnswer) { //right answer?
      numCorrect++;
      print("Correct!");
    } else {
      print("Wrong!");
      print("The correct answer is: $correctAnswer");
    }

    questionsAttempted++;
  }
}