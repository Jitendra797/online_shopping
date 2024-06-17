import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/appbar/appbar.dart';
import 'package:online_shopping/common/widgets/products/ratings/rating_indicator.dart';
import 'package:online_shopping/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:online_shopping/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(
        title: Text(
          'Reviews & Ratings',
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ratings and reviews are verified and are from people who use the same type of device that you use.',
            ),
            const SizedBox(height: KSizes.spaceBtwItems),
            // Overall Product Ratings
            const KOverallProductRating(),
            const KRatingBarIndicator(rating: 3.5),
            Text('12.61', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: KSizes.spaceBtwSections),
            // User reviews list
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
