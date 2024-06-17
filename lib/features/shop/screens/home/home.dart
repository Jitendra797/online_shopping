import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:online_shopping/common/widgets/layouts/grid_layout.dart';
import 'package:online_shopping/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:online_shopping/features/shop/screens/home/widgets/home_categories.dart';
import 'package:online_shopping/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header part
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: KSizes.spaceBtwSections),
                  SearchContainer(
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(height: KSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: KSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                        SizedBox(height: KSizes.spaceBtwItems),
                        HomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: KSizes.spaceBtwSections),
                ],
              ),
            ),

            // Body Part
            Padding(
              padding: const EdgeInsets.all(KSizes.defaultSpace),
              child: Column(
                children: [
                  // PromoSlider
                  const PromoSlider(
                    banners: [
                      KImages.banner1,
                      KImages.banner2,
                      KImages.banner3
                    ],
                  ),
                  const SizedBox(height: KSizes.spaceBtwSections),

                  // Heading
                  SectionHeading(title: 'Popular Products', onPressed: () {}),
                  const SizedBox(height: KSizes.spaceBtwItems),

                  // Popular Products
                  KGridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) => const KProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
