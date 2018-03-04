// importing dart builtin html lib
import 'dart:html';

// mainf un => entry point
void main() {
  // look for elem with id #button => list to click event and call sayHello fun
  querySelector("#button").onClick.listen(sayHello);
}

// say hello fun
void sayHello(MouseEvent event) {
  // find html elem with id #name and get its text content
  // => set its value to the input element value

  querySelector("#name").text = 
  // /find the HTML element with the id of ‘name_box’ and represent it as an InputElement
  (querySelector("#name_box") as InputElement).value;

  // reset the input field val after that
  (querySelector("#name_box") as InputElement).value = "";
}