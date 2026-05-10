import 'package:flutter/material.dart';

import 'colors.dart';

abstract final class NoSoTypography {
  static TextTheme textTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        color: NoSoColors.textPrimary,
        fontSize: 56,
        fontWeight: FontWeight.w900,
        letterSpacing: -3,
        height: 0.95,
      ),
      headlineSmall: TextStyle(
        color: NoSoColors.textPrimary,
        fontSize: 24,
        fontWeight: FontWeight.w800,
      ),
      titleMedium: TextStyle(
        color: NoSoColors.textPrimary,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: TextStyle(
        color: NoSoColors.textPrimary,
        fontSize: 16,
        height: 1.45,
      ),
      bodyMedium: TextStyle(
        color: NoSoColors.textSecondary,
        fontSize: 14,
        height: 1.35,
      ),
      labelLarge: TextStyle(
        color: NoSoColors.textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w800,
        letterSpacing: 0.2,
      ),
    );
  }
}
