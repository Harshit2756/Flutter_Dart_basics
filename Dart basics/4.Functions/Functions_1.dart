// ignore_for_file: unused_local_variable

void main() {
  //* Functions
  //. function is a block of code which is used to perform a specific task

  //. we use return keyword to return a value from a function
  //. we use => to return a value from a function
  //. we can also use fat arrow (=>) to write a function

  //. <return_type> <function_name> (<arguments>){}

  print("Function");
  print(greet());
  print("\n-------------------------\n");

  print("Records");
  print(printName());
  //. we use . to access the values of a record and $ to access the index of a record
  print(printName().$1);

  //we can also do this
  var (age, name) = printName();
  print("\n age: $age");
  print("\n-------------------------\n");

  // *positional arguments and named arguments
  print("positional arguments and named arguments");
  print("_________________________\n");
  Positional(name, 12, 'hello');
  Named(age: 12, name: name, greet: 'hello');
  PositionalNamed(name, age: 12, greet: 'hello');

  //* named arguments in records
  print("named arguments in records");
  print("_________________________\n");
  final stuff = namedRecords();
  print(stuff.name);
  print(stuff.age);
  print(stuff.greet);
  print("\n-------------------------\n");

  
}

String? greet() {
  return "Hello";
}

//* recordes
//. to return two or more types of values from a function we use Records also known as Tuples
//. we use curly braces to create a record
(int, String) printName() {
  return (18, "Harshit");
}

// *positional arguments and named arguments
void Positional(String name, int age, String greet) {
  print("Accessing positional arguments");
  print("Hello $name, you are $age years old");
  print(greet);
  print("\n-------------------------\n");
}

//. we use {} or [] to make an argument named
//. if we are not using required keyword then we have to use ? to make an argument optional i.e. it can be null
// Required is used to make an argument required
void Named({required String name, int? age, String? greet}) {
  print("Accessing named arguments");
  print("Hello $name, you are $age years old");
  print(greet);
  print("\n-------------------------\n");
}

void PositionalNamed(String name, {required int? age, String? greet}) {
  print("Accessing positional and named arguments");
  print("Hello $name, you are $age years old");
  print(greet);
  print("\n-------------------------\n");
}

// *named arguments in records
({String name, int? age, String? greet}) namedRecords() {
  print("Accessing named arguments in records");
  return (age: 12, name: "Harshit", greet: "Hello");
}
