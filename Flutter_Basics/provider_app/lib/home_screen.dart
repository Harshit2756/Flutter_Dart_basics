// ignore_for_file: avoid_print, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

// Stateless Widget: It is a widget that does not have any state.
//. It is immutable and cannot be changed once it is built.
//. It is useful when the part of the user interface you are describing does not depend on anything other than the configuration information in the object itself and the BuildContext in which the widget is inflated.

// . means the vairiables can't be changed once it is built.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //- this vairiable gives error if final is not added
  final int x = 0;
  @override
  Widget build(BuildContext context) {
    print("Build");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text('Provider Demo')),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              x.toString(),
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
