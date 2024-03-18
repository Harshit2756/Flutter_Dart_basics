import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import 'socail_floating_action_button.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HFloatingActionButton(
          onpressed: () {},
          image: TImages.google,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        HFloatingActionButton(
          onpressed: () {},
          image: TImages.facebook,
        ),
      ],
    );
  }
}


