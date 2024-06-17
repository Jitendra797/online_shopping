import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/common/widgets/Icons/circular_icon.dart';
import 'package:online_shopping/common/widgets/appbar/appbar.dart';
import 'package:online_shopping/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:online_shopping/common/widgets/images/rounded_image.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class KProductImageSlider extends StatelessWidget {
  const KProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = KHelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: isDark ? KColors.darkerGrey : KColors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(KSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(KImages.productImage1))),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: KSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: KSizes.spaceBtwItems),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => KRoundedImage(
                    width: 80,
                    backgroundColor: isDark ? KColors.dark : KColors.white,
                    border: Border.all(color: KColors.primary),
                    padding: const EdgeInsets.all(KSizes.sm),
                    imageUrl: KImages.productImage2,
                  ),
                ),
              ),
            ),
            const KAppBar(
              showBackArrow: true,
              actions: [
                KCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
