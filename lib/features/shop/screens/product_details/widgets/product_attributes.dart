import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/chips/choice_chip.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:online_shopping/common/widgets/texts/product_price_text.dart';
import 'package:online_shopping/common/widgets/texts/product_title_text.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class KProductAttributes extends StatelessWidget {
  const KProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = KHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected attribute pricing and description
        KRoundedContainer(
          backgroundColor: isDark ? KColors.darkerGrey : KColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(KSizes.md),
            child: Column(
              children: [
                Row(
                  children: [
                    const SectionHeading(
                        title: 'Variation', showActionButton: false),
                    const SizedBox(width: KSizes.spaceBtwItems),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const KProductTitleText(
                              title: 'Price : ',
                              smallSize: true,
                            ),
                            const SizedBox(width: KSizes.spaceBtwItems),
                            Text(
                              '\$25',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough),
                            ),
                            const SizedBox(width: KSizes.spaceBtwItems),
                            const ProductPriceText(price: '20'),
                          ],
                        ),
                        Row(
                          children: [
                            const KProductTitleText(
                              title: 'Stock : ',
                              smallSize: true,
                            ),
                            Text('In Stock',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const KProductTitleText(
                  title:
                      'This is the Description of the product and it can go upto max 4 lines',
                  smallSize: true,
                  maxLines: 4,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: KSizes.spaceBtwItems),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            SizedBox(height: KSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                KChoiceChip(text: 'Green', selected: true),
                KChoiceChip(text: 'Blue', selected: false),
                KChoiceChip(text: 'Yellow', selected: false),
              ],
            )
          ],
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            SizedBox(height: KSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                KChoiceChip(text: 'EU 34', selected: true),
                KChoiceChip(text: 'EU 36', selected: false),
                KChoiceChip(text: 'EU 38', selected: false),
              ],
            )
          ],
        ),
      ],
    );
  }
}
