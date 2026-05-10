import 'package:flutter/foundation.dart';

abstract final class AppLogger {
  static void debug(String message) {
    if (kDebugMode) {
      debugPrint('[NO.SO] $message');
    }
  }
}
