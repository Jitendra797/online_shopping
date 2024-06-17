import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:online_shopping/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:online_shopping/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const KBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            const KProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                right: KSizes.defaultSpace,
                left: KSizes.defaultSpace,
                bottom: KSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating and share button
                  const KRatingAndShare(),
                  // Price, Title, Stack and Brand
                  const KProductMetaData(),
                  // Attributes
                  const KProductAttributes(),
                  // Checkout Button
                  const SizedBox(height: KSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  // Description
                  const SizedBox(height: KSizes.spaceBtwSections),
                  const SectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: KSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is the Product description for Blue Nike Sleeve less vest. There are more things that can be added.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  // Reviews
                  const Divider(),
                  const SizedBox(height: KSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(
                        title: 'Reviews(199)',
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                        onPressed: () =>
                            Get.to(() => const ProductReviewsScreen()),
                      ),
                    ],
                  ),
                  const SizedBox(height: KSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
