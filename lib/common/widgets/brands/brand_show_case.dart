import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:online_shopping/common/widgets/brands/brand_card.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class KBrandShowcase extends StatelessWidget {
  const KBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return KRoundedContainer(
      showBorder: true,
      borderColor: KColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(KSizes.md),
      margin: const EdgeInsets.only(bottom: KSizes.spaceBtwItems),
      child: Column(
        children: [
          const BrandCard(showBorder: false),
          const SizedBox(height: KSizes.spaceBtwItems),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: KRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(KSizes.md),
      margin: const EdgeInsets.only(right: KSizes.sm),
      backgroundColor: KHelperFunctions.isDarkMode(context)
          ? KColors.darkerGrey
          : KColors.light,
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ),
  );
}
