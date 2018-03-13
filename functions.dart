//Functions allow a program to be broken down
// into callable units

//A variable declared at the so-called top level
// of a Dart source file is accessible anywhere within it


// it can be specified explicitly that a function does not
// return a value with the keyword => void
void main() {
  sayHello("Ahmed");

  print("${multiply(2, 2)}");
}

// args
sayHello(String name) {
  print("Hello $name");
}

//type of returned value
//The type of the return value can be indicated before
//the name of the function
int multiply(int num1, int num2) {
  int product = num1 * num2;
  // How are return values used? They take the place of the
  // function call in the code block where the function is called
  return product;
  //think of return as a function call => multiply()
}

//When a function reaches a return statement, it will immediately exit.
//No code in the function will be executed after
//a return statement is executed
int luckyNumber() {
  return 7;  // function exits here
  print("I'm thinking of a number...");  // DEAD CODE, never executed
}


//single line functions (syntactic sugar)
sayHello1(String name) => print("Hello, $name"); // just as valid as next version
void sayHello2(String name) => print("Hello $name"); //same as previous but with void
int multiply1(int numA, int numB) => numA * numB; //think of as return num A * num B
int luckyNumber2() => 7; //return is implied




