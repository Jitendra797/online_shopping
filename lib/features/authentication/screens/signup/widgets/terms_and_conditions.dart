import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: KSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${KTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: KTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? KColors.white : KColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? KColors.white : KColors.primary,
                    ),
              ),
              TextSpan(
                text: ' ${KTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: KTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? KColors.white : KColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? KColors.white : KColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
