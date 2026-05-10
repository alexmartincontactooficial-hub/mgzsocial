import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../app/theme/colors.dart';
import '../../../app/theme/effects.dart';

class GlassContainer extends StatelessWidget {
  const GlassContainer({
    required this.child,
    super.key,
    this.padding = const EdgeInsets.all(20),
    this.margin,
    this.radius = NoSoEffects.cardRadius,
    this.opacity = 0.16,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final double radius;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: NoSoEffects.emotionalDepth,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: NoSoEffects.glassBlur,
            sigmaY: NoSoEffects.glassBlur,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((opacity * 255).round()),
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(color: NoSoColors.glassStroke),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withAlpha(((opacity + 0.08) * 255).round()),
                  NoSoColors.glassSurface,
                  Colors.white.withAlpha((0.06 * 255).round()),
                ],
              ),
            ),
            child: Padding(padding: padding, child: child),
          ),
        ),
      ),
    );
  }
}
