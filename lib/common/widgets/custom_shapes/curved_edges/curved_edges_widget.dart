import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: KCustomCurvedEdges(),
      child: child,
    );
  }
}
