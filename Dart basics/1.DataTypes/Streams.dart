import 'dart:async';

void main() async {
  // * Streams
  // . A stream is a sequence of asynchronous events that can be listened to and responded to using callback functions. 
  // . Streams are used to handle asynchronous data in Dart, such as user input, network requests, and file I/O.
  // . With stream we can handle parallel asynchronous events.

  // . here await is used to wait for the result of a Future.
  print(await countDown().first);

  // . We can use the listen() method to listen to the events in a stream.
  // . listen((String data) { print(data); }, onError: (error) { print(error); }, onDone: () { print("Stream closed!"); });
  // * Stream listen
  countDown().listen((val) {
    print("Stream listen : $val");
    // print(val);
  }, onDone: () {
    print("Stream listen closed!");
    print("\n----------------\n");
  });

  print("hii");

  // * Stream periodic
  countDown2().listen((val) {
    print("Stream periodic --> $val");
    // print(val);
  }, onDone: () {
    print("Stream periodic closed!");
    print("\n----------------\n");
  });
}

// . We can use the async* keyword to mark a function as asynchronous generator.
// . An asynchronous generator is a function that returns a Stream.
// . We can use the yield keyword to emit values from the stream because the function is asynchronous.

Stream<int> countDown() async* {
  for (var i = 5; i >= 0; i--) {
    yield i;
    // . here we are delaying the execution of the loop by 1 second.
    await Future.delayed(Duration(seconds: 1));
  }
}

// * Stream Controller
// . StreamController is a class that provides a way to create and manage streams of data. 
// . It is part of the dart:async library and is used to control the flow of data in a stream.
Stream<int> countDown2() {
  // . They are used to control the flow of data in a stream
  // . dart async package.
  final controller = StreamController<int>();

  // . We can use the add() method to add values to the stream.
  // . Sink is the input of the stream. We can add values to the stream using the sink.
  controller.sink.add(5);
  controller.sink.add(4);
  controller.sink.add(3);
  controller.sink.add(2);
  controller.sink.addError("ERROR!!!!");
  controller.sink.add(1);
  // . We can use the close() method to close the stream.
  controller.sink.close();

  // . The stream property of the controller is accessed to get a stream of data. 
  // . The listen method is then called on the stream to register a callback function that will be called whenever new data is available on the stream.
  controller.stream.listen((val) {
    print("Inside Stream Controller --> $val");
  }, onError: (err) {
    print("Inside Stream Controller --> $err");
  });

  controller.close();
  // . period is the time after which the value will be added to the stream.
  return Stream.periodic(Duration(seconds: 1), (int a) {
    return a;
  });

}
