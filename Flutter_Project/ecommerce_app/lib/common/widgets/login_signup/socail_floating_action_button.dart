import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class HFloatingActionButton extends StatelessWidget {
  const HFloatingActionButton({
    super.key,
    required this.onpressed,
    required this.image,
  });
  final Function onpressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: TColors.white,
      shape: const CircleBorder(
        side: BorderSide(
          color: TColors.grey,
        ),
      ),
      elevation: 0,
      onPressed: () => onpressed,
      child: Image(
        height: TSizes.iconMd,
        width: TSizes.iconMd,
        image: AssetImage(image),
      ),
    );
  }
}
