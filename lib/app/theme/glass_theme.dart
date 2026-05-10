import 'package:flutter/material.dart';

import 'colors.dart';
import 'typography.dart';

abstract final class NoSoGlassTheme {
  static ThemeData dark() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: NoSoColors.ultraviolet,
      brightness: Brightness.dark,
      surface: NoSoColors.midnight,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: NoSoColors.cosmicBlack,
      textTheme: NoSoTypography.textTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
    );
  }

  static ThemeData light() => dark();
}
