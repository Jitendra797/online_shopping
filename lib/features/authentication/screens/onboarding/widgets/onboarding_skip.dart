import 'package:flutter/material.dart';
import 'package:online_shopping/features/authentication/onboarding_controllers/onboarding_controller.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: KDeviceUtils.getAppBarHeignt(),
      right: KSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: const Text("Skip"),
      ),
    );
  }
}
