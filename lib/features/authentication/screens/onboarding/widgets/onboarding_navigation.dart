import 'package:flutter/material.dart';
import 'package:online_shopping/features/authentication/onboarding_controllers/onboarding_controller.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/device/device_utility.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = KHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: KDeviceUtils.getBottomNavigationBarHeight(),
      left: KSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? KColors.light : KColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
