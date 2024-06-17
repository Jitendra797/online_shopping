import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/device/device_utility.dart';

class KRatingProgessIndicator extends StatelessWidget {
  const KRatingProgessIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: KDeviceUtils.getScreenWidth() * 0.5,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              backgroundColor: KColors.grey,
              valueColor: const AlwaysStoppedAnimation(KColors.primary),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}
