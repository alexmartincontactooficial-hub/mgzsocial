import 'package:flutter/material.dart';

import '../../features/feed/presentation/pages/no_so_home_page.dart';
import 'routes.dart';

abstract final class NoSoRouter {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (_) => switch (settings.name) {
        NoSoRoutes.home ||
        NoSoRoutes.feed ||
        NoSoRoutes.chat ||
        NoSoRoutes.stories ||
        NoSoRoutes.music ||
        NoSoRoutes.map ||
        NoSoRoutes.circles ||
        NoSoRoutes.vibe => const NoSoHomePage(),
        _ => const NoSoHomePage(),
      },
    );
  }
}
