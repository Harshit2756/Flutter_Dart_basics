// import 'package:http/http.dart' as http;


void main() async {
  //* Futures (promises) async
  // . A future is an object that represents a potential value, or error, that will be available at some time in the future.

  // . async keyword is used to mark a function as asynchronous so that we can use await inside the function.
  // . asynchrones means that the function will run in a separate thread from the main thread.
  // . await keyword is used to wait for the result of a Future.
  print("before");
  final result = await giveAfter2Seconds();
  print(result);
  print('hey');

  // . We can use the then() method to get the result of a Future 
  giveAfter5Seconds().then((value) => print(value));
  print("hello");
  print("hi");
}

Future<String> giveAfter2Seconds() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'After 2 seconds';
  });
}

Future<String> giveAfter5Seconds() {
  return Future.delayed(Duration(seconds: 5), () {
    return 'After 5 seconds';
  });
}
