import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class KChoiceChip extends StatelessWidget {
  const KChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = KHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(
          color: selected ? KColors.white : null,
        ),
        avatar: isColor
            ? CircularContainer(
                height: 50,
                width: 50,
                backgroundColor: KHelperFunctions.getColor(text)!)
            : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        backgroundColor: isColor ? KHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
