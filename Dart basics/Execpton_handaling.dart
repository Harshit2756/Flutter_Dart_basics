void main() {
  // * Exception handaling
  // . Exceptions are errors that occur at runtime.
  // . Dart provides a set of predefined exceptions.
  // . We can also create our own exceptions.
  // . try, catch, finally

  print(10 / 0);
  try {
    print(10 ~/ 0);
  } catch (e) {
    print("will run if exception is thrown");
    print(e);
  } finally {
    print('This will always run');
  }
  print("\n----------------\n");

  print("Using on keyword");
  // . We can also specify the type of exception to catch.
  try {
    print(10 ~/ 0);
  } on Exception {
    print('Cannot divide by zero');
  } finally {
    print('This will always run');
  }
}
