import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/colors.dart';

class KShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: KColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: KColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
