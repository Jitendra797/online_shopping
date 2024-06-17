import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/common/widgets/appbar/appbar.dart';
import 'package:online_shopping/features/personalization/screens/address/widgets/add_new_address.dart';
import 'package:online_shopping/features/personalization/screens/address/widgets/single_address.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: KColors.primary,
        child: const Icon(
          Iconsax.add,
          color: KColors.white,
        ),
      ),
      appBar: KAppBar(
        showBackArrow: true,
        title: Text('Addresses',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              KSingleAddress(selectedAddress: false),
              KSingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
