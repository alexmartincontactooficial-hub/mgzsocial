import 'package:flutter/material.dart';

abstract final class NoSoEffects {
  static const glassBlur = 24.0;
  static const cardRadius = 28.0;
  static const buttonRadius = 20.0;
  static const emotionalDepth = <BoxShadow>[
    BoxShadow(
      color: Color(0x668F5CFF),
      blurRadius: 36,
      spreadRadius: -14,
      offset: Offset(0, 18),
    ),
    BoxShadow(
      color: Color(0x333FE7FF),
      blurRadius: 28,
      spreadRadius: -18,
      offset: Offset(-12, -8),
    ),
  ];
}
