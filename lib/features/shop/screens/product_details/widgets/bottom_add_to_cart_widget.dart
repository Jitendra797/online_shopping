import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/common/widgets/Icons/circular_icon.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class KBottomAddToCart extends StatelessWidget {
  const KBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = KHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: KSizes.defaultSpace, vertical: KSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: isDark ? KColors.darkerGrey : KColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(KSizes.cardRadiusLg),
          topRight: Radius.circular(KSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const KCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: KColors.darkGrey,
                width: 40,
                height: 40,
                color: KColors.white,
              ),
              const SizedBox(width: KSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: KSizes.spaceBtwItems),
              const KCircularIcon(
                icon: Iconsax.add,
                backgroundColor: KColors.black,
                width: 40,
                height: 40,
                color: KColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(KSizes.md),
              backgroundColor: KColors.black,
              side: const BorderSide(color: KColors.black),
            ),
            child: const Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
