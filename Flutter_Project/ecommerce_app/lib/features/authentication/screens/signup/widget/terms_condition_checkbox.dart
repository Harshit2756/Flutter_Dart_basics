import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        // const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              /// I agree to
              TextSpan(
                text: '${TTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),

              /// Privacy Policy
              TextSpan(
                text: '${TTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: isDark ? TColors.white : TColors.primary,
                      decorationColor: isDark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                    ),
              ),

              /// and
              TextSpan(
                text: '${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),

              /// Terms and Conditions
              TextSpan(
                text: TTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: isDark ? TColors.white : TColors.primary,
                      decorationColor: isDark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
