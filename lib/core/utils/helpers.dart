import 'package:flutter/material.dart';

abstract final class ResponsiveHelper {
  static bool isWide(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= 900;
  }
}
