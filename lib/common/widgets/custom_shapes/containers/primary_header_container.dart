import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:online_shopping/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:online_shopping/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: SizedBox(
        child: Container(
          color: KColors.primary,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: KColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  backgroundColor: KColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
