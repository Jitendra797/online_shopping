import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/appbar/appbar.dart';
import 'package:online_shopping/common/widgets/appbar/tabbar.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:online_shopping/common/widgets/layouts/grid_layout.dart';
import 'package:online_shopping/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:online_shopping/common/widgets/brands/brand_card.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/features/shop/screens/store/widgets/category_tab.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: KAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CartCounterIcon(
              onPressed: () {},
              isIconColor: true,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: KHelperFunctions.isDarkMode(context)
                    ? KColors.black
                    : KColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(KSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: KSizes.spaceBtwItems),

                      // Search bar
                      const SearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: KSizes.spaceBtwSections),

                      // -- Featured Brands
                      SectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(height: KSizes.spaceBtwItems / 2),

                      KGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const BrandCard(showBorder: false);
                          })
                    ],
                  ),
                ),

                // Tabs
                bottom: const KTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              KCategoryTab(),
              KCategoryTab(),
              KCategoryTab(),
              KCategoryTab(),
              KCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
