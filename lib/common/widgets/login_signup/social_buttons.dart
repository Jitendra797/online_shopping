import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: KColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(KImages.google),
              width: KSizes.iconMd,
              height: KSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: KSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: KColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(KImages.facebook),
              width: KSizes.iconMd,
              height: KSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
