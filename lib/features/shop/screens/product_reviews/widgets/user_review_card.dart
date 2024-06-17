import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:online_shopping/common/widgets/products/ratings/rating_indicator.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = KHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(KImages.userProfile1),
                ),
                const SizedBox(width: KSizes.spaceBtwItems),
                Text(
                  'Allu Arjun',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: KSizes.spaceBtwItems),
        // Review
        Row(
          children: [
            const KRatingBarIndicator(rating: 4),
            const SizedBox(width: KSizes.spaceBtwItems),
            Text('01 Nov 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: KSizes.spaceBtwItems),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: KColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: KColors.primary),
        ),
        const SizedBox(height: KSizes.spaceBtwItems),
        KRoundedContainer(
          backgroundColor: isDark ? KColors.darkerGrey : KColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(KSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "K's Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '02 Nov 2023',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: KSizes.spaceBtwItems),
                const ReadMoreText(
                  'Thanks for the compliment and we hope that u are satisfied with our app while using. Have a nice day',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: KColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: KColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: KSizes.spaceBtwSections),
      ],
    );
  }
}
