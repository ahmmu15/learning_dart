void main() {

  int temp = 55;

  if(temp > 75) {
    print("It's ho today!");
  } else if(temp > 50) {
    print("It's mild today.");
  } else {
    print("It's cold today.");
  }

  // using bools in logic
  bool b = true;

  if(b) {
    print("The shit is real!");
  }

  //Equivalency Operators in Dart, Ordered by Precedence 
  // ==   equale to
  // !=   not equale to
  // >    greater than
  // <    less than
  // >=   greater than or equale to
  // <=   less than or equale to


  // bang or not operator => !
  bool c = false;

  if(!c) {
    print("True");
  } else {
    print("False"); //will not be executed 
  }

  // The not operator can also be applied to a more comprehensive expression
  if(!(temp > 75)) {
    print("It's not hot today.");
  }
}