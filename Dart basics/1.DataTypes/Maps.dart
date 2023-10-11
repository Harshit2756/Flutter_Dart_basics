// ignore_for_file: unused_local_variable

void main() {
  // * Maps
  // . Maps are a collection of key-value pairs.
  // . Maps are also known as hash tables or dictionaries.
  // . Maps are unordered collections, so the order in which the key-value pairs are added doesn't matter.
  // . The keys in a map are unique, but the values can be duplicated.
  /*
  {
    key1: value1,
    key2: value2,
    key3: value2,
    ...
  }
   */

  final list = [10, 20, 30, 40, 50];

  Map<String, int> studentMarks = {
    'Harshit': 10,
    'Rahul': 20,
    'Rohit': 30,
    'Rohan': 40,
    'Raj': 50,
  };
  print(studentMarks);
  print(studentMarks['Adu']?.isEven);

  // * Adding a new key-value pair
  print("\nAdding a new key-value pair");
  studentMarks['Adu'] = 60;
  print(studentMarks);

  //- adding a new key-value pair using addAll() method
  print("\nAdding a new key-value pair using addAll() method");
  studentMarks.addAll({'Ajit': 60, 'Raju': 70});
  print(studentMarks);

  print("\n-------------------\n");

  // * Updating a value
  print("Updating a value");
  studentMarks['Adu'] = 70;
  print(studentMarks);
  print("\n-------------------\n");

  // * Removing a key-value pair
  print("Removing a key-value pair");
  studentMarks.remove('Adu');
  print(studentMarks);
  print("\n-------------------\n");

  // * Iterating over a map
  print("Iterating over a map");
  // . Using for loop
  print("Using for loop");
  for (var i = 0; i < studentMarks.length; i++) {
    print(
        "${studentMarks.keys.elementAt(i)}:\t${studentMarks.values.elementAt(i)}");
  }

  print("------");

  // . Using forin method
  print("Using forin method");
  for (var key in studentMarks.keys) {
    print("${key}:\t${studentMarks[key]}");
  }

  print("------");
  // . Using forEach method
  print("Using forEach method");
  studentMarks.forEach((key, value) {
    print("${key}:\t${value}");
  });

  print("\n-------------------\n");

  // * List of maps
  print("List of maps");
  List<Map<String, int>> students = [
    {
      'Maths': 10,
      'Science': 20,
      'English': 30,
      'Hindi': 40,
    },
    {
      'Maths': 50,
      'Science': 60,
      'English': 70,
      'Hindi': 80,
    },
    {
      'Maths': 90,
      'Science': 100,
      'English': 110,
      'Hindi': 120,
    },
  ];

  students.map((e) => print(e)).toList();
}
