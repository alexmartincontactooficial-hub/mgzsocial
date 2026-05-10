import 'package:flutter/material.dart';

import 'router/app_router.dart';
import 'router/routes.dart';
import 'theme/glass_theme.dart';

class NoSoApp extends StatelessWidget {
  const NoSoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NO.SO',
      debugShowCheckedModeBanner: false,
      theme: NoSoGlassTheme.light(),
      darkTheme: NoSoGlassTheme.dark(),
      themeMode: ThemeMode.dark,
      initialRoute: NoSoRoutes.home,
      onGenerateRoute: NoSoRouter.onGenerateRoute,
    );
  }
}
