import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:online_shopping/common/widgets/images/circular_image.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';

class KUserProfileTile extends StatelessWidget {
  const KUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const KCircularImage(
        image: KImages.user,
        height: 50,
        width: 50,
        padding: 6,
      ),
      title: Text(
        'Samantha',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: KColors.white),
      ),
      subtitle: Text(
        'samantha@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: KColors.white),
      ),
      trailing: IconButton(
        icon: const Icon(Iconsax.edit, color: KColors.white),
        onPressed: onPressed,
      ),
    );
  }
}
