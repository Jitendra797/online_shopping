import 'package:flutter/material.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/device/device_utility.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class KTabBar extends StatelessWidget implements PreferredSizeWidget {
  const KTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? KColors.black : KColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: KColors.primary,
        unselectedLabelColor: KColors.darkGrey,
        labelColor: dark ? KColors.white : KColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(KDeviceUtils.getAppBarHeignt());
}
