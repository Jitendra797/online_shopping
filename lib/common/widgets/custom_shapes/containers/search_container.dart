import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/device/device_utility.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer(
      {super.key,
      required this.text,
      this.icon = Iconsax.search_normal,
      this.showBackground = true,
      this.showBorder = true,
      this.onTap,
      this.padding =
          const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace)});

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: KDeviceUtils.getScreenWidth(),
          padding: const EdgeInsets.all(KSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? KColors.dark
                    : KColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(KSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: KColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: dark ? KColors.darkerGrey : KColors.grey,
              ),
              const SizedBox(width: KSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
