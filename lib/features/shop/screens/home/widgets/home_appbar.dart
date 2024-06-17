import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/appbar/appbar.dart';
import 'package:online_shopping/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return KAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            KTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: KColors.grey),
          ),
          Text(
            KTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: KColors.white),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {},
        ),
      ],
    );
  }
}
