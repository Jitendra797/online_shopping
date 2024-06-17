import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/brands/brand_show_case.dart';
import 'package:online_shopping/common/widgets/layouts/grid_layout.dart';
import 'package:online_shopping/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class KCategoryTab extends StatelessWidget {
  const KCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              const KBrandShowcase(
                  images: [KImages.productImage2, KImages.productImage1]),
              SectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: KSizes.spaceBtwItems),
              KGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const KProductCardVertical(),
              ),
              const SizedBox(height: KSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
