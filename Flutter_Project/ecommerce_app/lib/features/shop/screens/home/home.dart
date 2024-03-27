import 'package:flutter/material.dart';
import 'package:t_store/utils/device/device_utility.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'widget/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Primary Header Container
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar
                  HHomeAppBar(),

                  /// -- Search Bar
                 

                  /// -- Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
