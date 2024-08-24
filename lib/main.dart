import 'package:flutter/material.dart';
import 'package:portfolio/routing/navigation_service.dart';
import 'package:portfolio/routing/routing.dart';
import 'package:portfolio/utils/app_theme_data.dart';

void main() async {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData,
      themeMode: ThemeMode.light,
      home: Navigator(
        key: locator<NavigationService>().navigatorKey,
        onGenerateRoute: generateRoute,
        initialRoute: layoutPage,
      ),
    );
  }
}
