import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:online_shopping/common/widgets/images/circular_image.dart';
import 'package:online_shopping/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/enums.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: KRoundedContainer(
        padding: const EdgeInsets.all(KSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: KCircularImage(
                isNetworkImage: false,
                image: KImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: KHelperFunctions.isDarkMode(context)
                    ? KColors.white
                    : KColors.black,
              ),
            ),
            const SizedBox(width: KSizes.spaceBtwItems / 2),

            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 Products with asjbsd sj',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
