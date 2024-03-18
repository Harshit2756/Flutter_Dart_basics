import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/auth/screens/onboarding/onboarding_screen.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const Scaffold(
        body: Center(
          child: OnBoardingScreen(),
        ),
      ),
    );
  }
}
