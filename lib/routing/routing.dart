// ignore_for_file: constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/pages/home/home_page.dart';
import 'package:portfolio/pages/landing/landing_page_ui.dart';
import 'package:portfolio/pages/why_choose_flutter/why_choose_flutter_page.dart';

const String layoutPage = "LandingPage";
const String homeRoute = 'Home';
const String aboutRoute = 'WhatIDoRoute';
const String whyChooseFLutterRoute = 'skills';
const String projectsRoute = 'projects';
const String contactRoute = 'contact';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case layoutPage:
      return _getPageRoute(
        const LandingPage(),
        settings.name!,
      );
    case homeRoute:
      return _getPageRoute(
        const HomePage(),
        settings.name!,
      );
    case whyChooseFLutterRoute:
      return _getPageRoute(
        const WhyChooseFlutterDeveloperPage(),
        settings.name!,
      );
    // case projectsRoute:
    //   return _getPageRoute(
    //     Project
    //     settings.name!,
    //   );
    // case ContactRoute:
    //   return _getPageRoute(
    //     ScreenTypeLayout(
    //       desktop: const CenteredViewDesk(child: ContactPageDesk()),
    //       tablet: const CenteredViewTab(child: ContactPageDesk()),
    //       mobile: const CenteredViewMob(child: ContactPageDesk()),
    //     ),
    //     settings.name!,
    //   );
    default:
      _getPageRoute(
        const HomePage(),
        settings.name!,
      );
  }
  return null;
}

PageRoute _getPageRoute(Widget child, String routeName) {
  return _FadeRoute(child: child, routeName: routeName);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;

  _FadeRoute({
    this.child,
    this.routeName,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child!,
          settings: RouteSettings(
            name: routeName,
          ),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.fastOutSlowIn;

            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );
            return SlideTransition(
              position: tween.animate(curvedAnimation),
              child: child,
            );
          },
        );
}
