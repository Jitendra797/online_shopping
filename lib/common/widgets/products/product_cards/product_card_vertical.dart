import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/common/styles/shadows.dart';
import 'package:online_shopping/common/widgets/Icons/circular_icon.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:online_shopping/common/widgets/images/rounded_image.dart';
import 'package:online_shopping/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:online_shopping/common/widgets/texts/product_price_text.dart';
import 'package:online_shopping/common/widgets/texts/product_title_text.dart';
import 'package:online_shopping/features/shop/screens/product_details/product_details.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class KProductCardVertical extends StatelessWidget {
  const KProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [KShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(KSizes.productImageRadius),
          color: dark ? KColors.darkerGrey : KColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail, Wishlist Button, Discount tag
            KRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(KSizes.sm),
              backgroundColor: dark ? KColors.dark : KColors.light,
              child: Stack(
                children: [
                  const KRoundedImage(
                    imageUrl: KImages.productImage1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 1,
                    child: KRoundedContainer(
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
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: KCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwItems / 2),

            // Details
            const Padding(
              padding: EdgeInsets.only(left: KSizes.sm),
              child: Column(
                children: [
                  KProductTitleText(
                    title: 'Red Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: KSizes.spaceBtwItems / 2),
                  BrandTitleWithVerifiedIcon(
                    title: 'Nike',
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: KSizes.sm),
                  child: ProductPriceText(
                    price: '35.0',
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: KColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(KSizes.cardRadiusMd),
                      bottomRight: Radius.circular(KSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: KSizes.iconLg * 1.2,
                    height: KSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: KColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
