import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider_example_first/provider/count_provider.dart';
import 'Provider_example_two/provider/slider_provider.dart';
import 'Provider_example_two/screen/slider_screen.dart';
import 'value_notify_lisner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SiderProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: NotifyListenerScreen(),
      ),
    );
  }
}
