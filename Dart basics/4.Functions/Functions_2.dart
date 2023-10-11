void main() {
  final stuff = printStuff();
  stuff();


  // print(() {
  //   print("anonymous function");
  // }());
  //* anonymous function
  () {
    print("anonymous function called");
  }();

  //* fat arrow
  fatArrow();
  
}

Function printStuff() {
  return () {
    print("Hello");
  };
}


//* fat arrow
//. we use fat arrow (=>) to write a function which returns a value in one line  
void fatArrow() => print("fat arrow");