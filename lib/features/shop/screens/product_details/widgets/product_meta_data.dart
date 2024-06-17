import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:online_shopping/common/widgets/images/circular_image.dart';
import 'package:online_shopping/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:online_shopping/common/widgets/texts/product_price_text.dart';
import 'package:online_shopping/common/widgets/texts/product_title_text.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/enums.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class KProductMetaData extends StatelessWidget {
  const KProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = KHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            KRoundedContainer(
              radius: KSizes.sm,
              backgroundColor: KColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: KSizes.sm, vertical: KSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: KColors.black),
              ),
            ),
            const SizedBox(width: KSizes.spaceBtwItems),
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            const SizedBox(width: KSizes.spaceBtwItems),
            const ProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: KSizes.spaceBtwItems / 1.5),
        const KProductTitleText(title: 'Red Nike Sports Shoes'),
        const SizedBox(height: KSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            const KProductTitleText(title: 'Status'),
            const SizedBox(width: KSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: KSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            KCircularImage(
              image: KImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: isDark ? KColors.white : KColors.black,
            ),
            const BrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
