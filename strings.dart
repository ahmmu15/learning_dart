void main() {
  //you're free to use single/double quote when wrapping strings


  // string interpolation
  int temp = 75;

  // If it is just a single variable, we can use a dollar sign
  String wetherReport = "It is rainy and $temp degrees";
  print(wetherReport);

  // If it is an expression, we must use the ${} syntax
  String obviousReport = "If it were 30 degrees cooler it would be ${temp - 30} degrees";
  print(obviousReport);


  // escaping chars
  
  // use backslash to escape a char
  print("\"I am very tired,\" she said.");

  // using raw strings to escape char
  String myRawString = r"Here are my \ not \ special backslash";
  print(myRawString);


}