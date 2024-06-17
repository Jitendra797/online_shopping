import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/common/widgets/appbar/appbar.dart';
import 'package:online_shopping/common/widgets/images/circular_image.dart';
import 'package:online_shopping/common/widgets/texts/section_heading.dart';
import 'package:online_shopping/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(KSizes.defaultSpace),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const KCircularImage(
                          image: KImages.user, width: 80, height: 80),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Change Profile Picture')),
                    ],
                  ),
                ),
                const SizedBox(height: KSizes.spaceBtwItems / 2),
                const Divider(),
                const SizedBox(height: KSizes.spaceBtwItems),
                const SectionHeading(
                  title: 'Profile Information',
                  showActionButton: false,
                ),
                const SizedBox(height: KSizes.spaceBtwItems),
                KProfileMenu(
                  title: 'Name',
                  value: 'Samantha',
                  onPressed: () {},
                ),
                KProfileMenu(
                  title: 'Username',
                  value: 'Angrybird_07',
                  onPressed: () {},
                ),
                const SizedBox(height: KSizes.spaceBtwItems),
                const Divider(),
                const SizedBox(height: KSizes.spaceBtwItems),
                const SectionHeading(
                  title: 'Personal Information',
                  showActionButton: false,
                ),
                const SizedBox(height: KSizes.spaceBtwItems),
                KProfileMenu(
                  title: 'User ID',
                  value: '98233',
                  icon: Iconsax.copy,
                  onPressed: () {},
                ),
                KProfileMenu(
                  title: 'E-mail',
                  value: 'samantha@gmail.com',
                  onPressed: () {},
                ),
                KProfileMenu(
                  title: 'Phone Number',
                  value: '+91 9392516555',
                  onPressed: () {},
                ),
                KProfileMenu(
                  title: 'Gender',
                  value: 'Female',
                  onPressed: () {},
                ),
                KProfileMenu(
                  title: 'Date of Birth',
                  value: '28 Apr 1987',
                  onPressed: () {},
                ),
                const Divider(),
                const SizedBox(height: KSizes.spaceBtwItems),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Close Account',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
