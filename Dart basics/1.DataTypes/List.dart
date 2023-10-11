// ignore_for_file: unused_local_variable

void main() {
  //* List
  // . List is an ordered collection of objects.
  // . List can contain duplicate values.
  // . List can be fixed-length or growable.
  // . List can be empty or contain null values.
  // . List can be declared using List literals or the List constructor.
  print("\n-------------------\n");

  print("List");
  List list = [10, 20, 30, 40, false, 'Harshit'];
  print(list[0]);

  // . Checking the type of list using is keyword.
  // . list is int is same as "list.runtimeType == int"
  if (list is int) {
    print("List is String");
  }

  // . List is a generic type, so you can specify the type of values it will contain in angle brackets (<>).
  List<double> Marks = [10, 20, 30, 40, 50];
  print(Marks[4]);
  print("\n-------------------\n");

  // * Generic types can also be used with classes.
  // . Here T is a generic type and it can be replaced with any type while creating an object.
  // . we can also use other names instead of T.
  print("Generic types");
  Student student = Student(10);
  print(student.marks);
  Student student_1 = Student('Ten');
  print(student_1.marks);
  print("\n-------------------\n");

  // * List of objects of a class
  print("List of objects of a class");
  List<Student> students = [Student(10), Student("Twenty"), Student(30)];
  print(students[0].marks);
  print(students[1].marks);
  print("\n-------------------\n");

  // * List Insertion
  // . We can insert values in a list using insert() method.
  print("List Insertion");
  // . insert(index, value)
  students.insert(1, Student(100));
  print(students);

  // . We can also use insertAll() method to insert multiple values in a list.
  // . insertAll(index, [value1, value2, ...])
  Marks.insertAll(2,[10,50,20] );
  print(Marks);
  print("\n-------------------\n");

  // * List Update
  // . We can update values in a list using [] operator.
  print("List Update");
  students[0] = Student(20);
  print(students);
  print("\n-------------------\n");

  // * List Deletion
  // . We can delete values in a list using remove() method.
  print("List Deletion");
  // . remove(value)
  print(students);
  students.remove("Twenty");
  print(students);

  // . We can also use removeAt() method to delete values in a list.
  // . removeAt(index)
  print(students);
  students.removeAt(1);
  print(students);
  print("\n-------------------\n");

  // * List Slicing
  // . We can slice a list using sublist() method.
  print("List Slicing");
  // . sublist(startIndex, endIndex)
  print(Marks);
  print(Marks.sublist(1, 3));
  print("\n-------------------\n");

  // * List Iteration
  // . We can iterate over a list using for loop.
  print("List Iteration");
  List<double> filtermarks = [];
  for (var i = 0; i < Marks.length; i++) {
    if (Marks[i] > 20.0) {
      filtermarks.add(Marks[i]);
    }
  }
  print(filtermarks);

  // . We can also use forin loop to iterate over a list.
  for (var mark in Marks) {
    if (mark > 20.0) {
      print(mark);
    }
  }
  print("\n-------------------\n");

  // * List Properties
  //- .where() method
  // . The where() method returns an iterable containing all the elements of the list that satisfy the given predicate.
  print("List Properties");
  print("1) .where() method");
  // .tolist is used to convert the iterable to list.
  // . .where((element) => condition)
  final filtermarks_1 = Marks.where((mark) => mark > 20.0).toList();
  print("\t$filtermarks_1");
  print("\t${filtermarks_1.runtimeType}");
  print("\n-------------------\n");

  //- .reversed method
  // . The reversed method reverses the order of elements in the list.
  print("2) .reversed method");
  print("\t$Marks");
  Marks.reversed;
  print("\t$Marks");
  print("\n-------------------\n");

  //- .contains() method
  // . The contains() method returns true if the list contains the given element.
  print("3) .contains() method");
  print("\t$Marks");
  print("\t${Marks.contains(10)}");
  print("\n-------------------\n");

  //- .length property
  // . The length property returns the length of the list.
  print("4) .length property");
  print("\t$Marks");
  print("\t${Marks.length}");
  print("\n-------------------\n");

  //- .isEmpty property
  // . The isEmpty property returns true if the list is empty.
  print("5) .isEmpty property");
  print("\t$Marks");
  print("\t${Marks.isEmpty}");
  print("\n-------------------\n");

  //- .indexOf() method
  // . The indexOf() method returns the index of the first occurrence of the given element in the list.
  // . If the element is not found, it returns -1.
  print("6) .indexOf() method");
  print("\t$Marks");
  print("\t${Marks.indexOf(10)}");
  print("\n-------------------\n");

  //- .toset() method
  // . The toset() method returns a set containing all the elements of the list.
  print("7) .toset() method");
  print("\t$Marks");
  print("\t${Marks.toSet()}");
  print("\n-------------------\n");

  //- .join() method
  // . The join() method returns a string by concatenating all the elements of the list.
  print("8) .join() method");
  print("\t$Marks");
  print("\t${Marks.join()}");
  print("\n-------------------\n");

  //- .map() method
  // . The map() method returns an iterable containing the results of applying the given function to each element of the list.
  print("9) .map() method");
  print("\t$Marks");
  print("\t${Marks.map((mark) => mark * 2)}");
  print("\n-------------------\n");

}

// * Generic types
class Student<T> {
  T marks;
  Student(this.marks);

  @override
  // . We are overriding the toString() method created by the Object class by default.
  String toString() {
    return 'marks: $marks';
  }
}
