import 'package:flutter/material.dart';

// Stateless Widget: It is a widget that does not have any state. 
//.It is immutable and cannot be changed once it is built. It is useful when the part of the user interface you are describing does not depend on anything other than the configuration information in the object itself and the BuildContext in which the widget is inflated.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('I am Stateless Widget'),
      ),
    );
  }
}
