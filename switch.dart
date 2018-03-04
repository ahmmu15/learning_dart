void main() {
  String favAnimal = "chicken";

  switch (favAnimal) {
    case "dog":
      print("Bark!");
      break;
    case "cow":
      print("Moo!");
      break;
    case "chicken":
      print("Pak! Pak!");
      break;
    default:
      print("Well, you have no favorite animal! :(");
  }

  // Switch can also have empty cases that “fall-through” to the next case when there is a match
  int digit = 3;

  switch (digit) {
    case 0:
      print("Zero");
      break;
    case 1:
    case 3:
    case 5:
    case 7:
    case 9:
      print("Odd");
      break;
    case 2:
    case 4:
    case 6:
    case 8:
      print("Even");
      break;
    default:
      print("Not a Digit");
  }
}
