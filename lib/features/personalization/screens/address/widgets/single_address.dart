import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class KSingleAddress extends StatelessWidget {
  const KSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final isDark = KHelperFunctions.isDarkMode(context);
    return KRoundedContainer(
      padding: const EdgeInsets.all(KSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? KColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : isDark
              ? KColors.darkerGrey
              : KColors.grey,
      margin: const EdgeInsets.only(bottom: KSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? isDark
                      ? KColors.light
                      : KColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Samantha',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: KSizes.sm / 2),
              const Text('(+91) 9392516555',
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: KSizes.sm / 2),
              Text(
                '4-3, Marripalem, Nagayalanka, Krishna, AndraPradesh, 521120',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
                softWrap: true,
              ),
              const SizedBox(height: KSizes.sm / 2),
            ],
          )
        ],
      ),
    );
  }
}
