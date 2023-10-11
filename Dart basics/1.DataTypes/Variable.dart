// ignore_for_file: unused_local_variable

void main() {
  //* Variables in dart
  //. <data_type> <variable_name> = <value>;

  //* integer
  print("Integer");
  int age = 18;
  print(age);
  print(age.runtimeType); //. runtimeType is used to get the type of variable
  print("\n-------------------------\n");

  //* double
  print("Double");
  double pi = 3.14;
  print(pi);
  print(pi.runtimeType);
  print("\n-------------------------\n");

  //* string
  print("String");
  String name = "Hello World";
  print(name);
  print(name.runtimeType);
  print("\n-------------------------\n");

  // -string interpolation
  //. string interpolation is used to add a variable in a string
  //. we use $ sign to add a variable in a string
  print("String interpolation");
  print("My name is $name");
  print("\n-------------------------\n");

  //. we can also use expression in string interpolation
  //. we use ${} to add expression in string interpolation
  print("My name is ${name.length}");
  print("\n-------------------------\n");

  //- multiline string
  //. we use ''' ''' to create a multiline string
  print("Multiline string");
  String greetings = '''Hello World
      This is a multiline string''';
  print(greetings);
  print("\n-------------------------\n");

  //- raw string
  print("Raw string");
  //. we use r before the string to create a raw string
  // ~ raw string is used to print the string as it is
  String greetings2 = r'Hello World \n This is a raw string';
  print(greetings2);
  print("\n-------------------------\n");

  // -problem with string
  //. we can't add a string and integer
  String Val = "Hello World";
  // print(Val + 3);

  // -solution
  //. we can use toString() method to convert integer to string
  print(Val + 3.toString());
  print("\n-------------------------\n");

  //* boolean
  print("Boolean");
  bool isTrue = true;
  print(isTrue);
  print(isTrue.runtimeType);

  //- problem with boolean
  //. we can't add a boolean and integer
  bool isTrue1 = true;
  // print(isTrue1 + 3);

  // -solution
  //. we can use toString() method to convert integer to string
  print(isTrue1.toString() + 3.toString());
  print("\n-------------------------\n");

  //* Object
  //. Object is a special data type in dart which can store any type of data.
  // . Object is the base class of all the data types in dart except null.
  print("Object");
  Object value1 = 1;
  print(value1);
  print(value1.runtimeType);
  print("\n-------------------------\n");

  //* dynamic
  //. dynamic is a special data type in dart which can store any type of data
  //~ and can be change the datatype and value at runtime.
  print("Dynamic");
  dynamic value = 1;
  print(value);

  value = "Hello World";
  print(value);
  print(value.runtimeType);

  // -problem with dynamic
  //. dynamic is not a good practice to use as it can cause error at runtime

  // if we try to add a string and integer then it will give error at compile time
  String name2 = "Hello World";
  // print(name2 + 3);

  // but if we use dynamic then it will not give error at compile time but at runtime
  dynamic name3 = "Hello World";
  // print(name3 + 3);

  //. so we should avoid using dynamic

  print("\n-------------------------\n");

  //* var/const/final
  //. <var/const/final> <variable_name> = <value>;
  //- var
  //. var is also a special data type in dart which can store any type of data
  //~ but can't change the datatype  at runtime.
  //~ but can change the value at runtime i.e its mutable

  print("Var");
  var someValue = 1;
  print(someValue);
  print(someValue.runtimeType);

  // if we try to change the type of data then it will give error at compile time not the case in dynamic
  // someValue = "Hello World";
  // print(someValue);

  print("\n-------------------------\n");

  //- const
  //. const is used to create a constant variable
  //~ constant variable's value can't be change at runtime i.e its immutable
  print("Const");
  // const time =DateTime().now(); //. this will give error as we can't change the value of const variable at runtime
  // print(time);
  // print(time.runtimeType);
  print("\n-------------------------\n");

  //- final
  //. final is also used to create a constant variable
  //~ but it is used when we don't know the value of variable at compile time
  //~ final variable can't be change at runtime i.e its immutable
  print("Final");
  final Time = DateTime.now();
  print(Time);
  print(Time.runtimeType);
  print("\n-------------------------\n");

  //* type casting
  //. type casting is used to convert one data type to another
  //. we can use <data_type>.parse() method to convert string to integer or double
  //. we can use <data_type>.toString() method to convert integer or double to string
  print("Type casting");
  String age1 = "18";
  print(age1);
  print(age1.runtimeType);

  int age2 = int.parse(age1);
  print(age2);
  print(age2.runtimeType);
  print("\n-------------------------\n");

  //* Optional variable
  //. String/int/double/bool and null;
  //- String/int/double/bool ? <variable_name> = <value>;
  print("Optional variable");
  String? someName = null;
  // or
  // String? someName;
  print(someName);

  // -problem with optional variable
  final someName2 = null;
  // print(someName2.runtimeType); //. this will give error as we can't find the type of null

  // -solution
  //. we can use ?? to check if the variable is null or not
  print(someName2 ?? "someName2 is null");
  print("\n-------------------------\n");

  //* Null safety
  //. null safety is used to avoid null pointer exception
  //. it is used to check if the variable is null or not
  //. we can use ? to check if the variable is null or not
  //. we can use ?? to check if the variable is null or not
  //. we can use ! to tell the compiler that the variable is not null
  print("Null safety");
  String? Temp ;
  print(Temp);
  // print(Temp?.length); //. this will check if the variable is null or not
  // print(Temp?.length ??"Temp is null"); //. if null then print Temp is null.
  // print(Temp!.length); //. this will tell the compiler that the variable is not null
  print("\n-------------------------\n");
}
