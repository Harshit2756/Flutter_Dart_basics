// import 'List.dart';

void main() {
  // * records
  // . Record is a collection of fields.
  // . It has unique values.
  // . It is similar to a class but it is immutable.
  // . It is used to store data.
  // . It is declared using record keyword.
  // . It is also known as value type.

  final student = (21, Name: "Harshit", isAdult: true, 2);
  print(student);

  // . They have only getter i.e we can't set value of at a particular position.
  // student.$2 = hi;
  print(student.$2);

  // . Type safe i.e same type of data should be assigned
  var records = (4.5, "hi", true, 23);
  // records = (2.3,34,"hi",true,23); // . this gives error due to 2nd value is int.
  print(records);

  // . They can be null
  (double, int)? age = (4.5, 2);
  print(age);
  age = null;
  print(age);


  // 
}
