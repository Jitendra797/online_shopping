import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/common/widgets/Icons/circular_icon.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class KProductQuantityWithAddandRemove extends StatelessWidget {
  const KProductQuantityWithAddandRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 70),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            KCircularIcon(
              icon: Iconsax.minus,
              width: 32,
              height: 32,
              size: KSizes.md,
              color: KHelperFunctions.isDarkMode(context)
                  ? KColors.white
                  : KColors.black,
              backgroundColor: KHelperFunctions.isDarkMode(context)
                  ? KColors.darkerGrey
                  : KColors.light,
            ),
            const SizedBox(width: KSizes.spaceBtwItems),
            Text(
              '2',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(width: KSizes.spaceBtwItems),
            const KCircularIcon(
                icon: Iconsax.add,
                width: 32,
                height: 32,
                size: KSizes.md,
                color: KColors.white,
                backgroundColor: KColors.primary),
          ],
        ),
      ],
    );
  }
}
