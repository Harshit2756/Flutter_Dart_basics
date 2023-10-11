void main() {
  //* Control flow statements

  //* if and else
  int age = 18;
  if (age >= 18) {
    print("You can vote");
  } else if (age < 18) {
    print("You can't vote");
  } else {
    print("Invalid age");
  }

  //* ternary operator
  //. condition ? exp1 : exp2
  age >= 18 ? print("You can vote") : print("You can't vote");

  //* switch and case
  //. in dart 3.0, switch case dont need break statement as it done automatically by dart.
  //. we can also use conditional expression in case. 
  switch (age) {
    // this will check if age is 18 or greater than 18 
    case 18 when age >= 18:
      print("You can vote");
    // this will check if age is less than 18 and greater than 0 
    case 17 when age < 18 && age > 0:
      print("You can't vote");
    default:
      print("Invalid age");
  }
  
  // * for loop
  // * while and do-while loop
  // * break and continue
  // * assert
  // * try-catch and finally
}
