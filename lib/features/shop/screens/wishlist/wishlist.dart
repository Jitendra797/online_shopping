import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/common/widgets/Icons/circular_icon.dart';
import 'package:online_shopping/common/widgets/appbar/appbar.dart';
import 'package:online_shopping/common/widgets/layouts/grid_layout.dart';
import 'package:online_shopping/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:online_shopping/features/shop/screens/home/home.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          KCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              KGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const KProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
