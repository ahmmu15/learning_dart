void main() {

  // while loop
  int thingsToBeDone = 10;

  while(thingsToBeDone > 0) {
    // print("I have $thingsToBeDone thing/s to do");
    thingsToBeDone --;
  }


  // do while loop
  // useful when u wanna run something once regards the it's true or false
  do {
    // print("I have to be printed anyway!");
    thingsToBeDone --;
  } while (thingsToBeDone > 0);

  // for loop
  for(int num = 10; num > 0; num--) {
    print("The valuse of num is: $num");
  }

  // nested loops
  // vars defined in outer loop => can be accessed by inner loop
  //vard efined in inner loop => can't be accessed by outer loop
  for(int x = 1; x <= 10; x++) { //outer loop
    int powerTotal = 1;
    for(int y= 1; y <= 10; y++) { //inner loop
      //print the power of x
      powerTotal = powerTotal * x;
      print("$x^$y is $powerTotal");
    }
  }


}