// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import './my_stateless_widget.dart';
import './my_stateful_widget.dart';

void main() {
  runApp(const MyApp());
}



// Widget: It is a class that describes how to display the widget in the current screen and can be called in build method of the stateless or stateful widget.  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Life Cycle',
      theme: ThemeData.light(),
      home: MyStatefulWidget(),
    );
  }
}
