import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/images/rounded_image.dart';
import 'package:online_shopping/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:online_shopping/common/widgets/texts/product_title_text.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class KCartItem extends StatelessWidget {
  const KCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KRoundedImage(
          imageUrl: KImages.productImage1,
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(KSizes.sm),
          backgroundColor: KHelperFunctions.isDarkMode(context)
              ? KColors.darkerGrey
              : KColors.light,
        ),
        const SizedBox(width: KSizes.spaceBtwItems),
        // Title, Prize and size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BrandTitleWithVerifiedIcon(title: 'Nike'),
            const Flexible(
              child: KProductTitleText(
                title: 'Black Sports shoes',
                maxLines: 1,
              ),
            ),
            // Attributes
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: 'Green ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: 'UK 09 ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
