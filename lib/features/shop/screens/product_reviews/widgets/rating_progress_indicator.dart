import 'package:flutter/material.dart';
import 'package:online_shopping/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';

class KOverallProductRating extends StatelessWidget {
  const KOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text('4.8', style: Theme.of(context).textTheme.displayLarge),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              KRatingProgessIndicator(text: '5', value: 1.0),
              KRatingProgessIndicator(text: '4', value: 0.8),
              KRatingProgessIndicator(text: '3', value: 0.6),
              KRatingProgessIndicator(text: '2', value: 0.4),
              KRatingProgessIndicator(text: '1', value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}
