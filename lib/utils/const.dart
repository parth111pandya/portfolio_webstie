import 'package:flutter/material.dart';
import 'package:portfolio/routing/navigation_service.dart';
import 'dart:js' as js;

class Const {
  BuildContext context;

  Const(this.context);

  double getWidth() => MediaQuery.of(context).size.width;
  double getHeight() => MediaQuery.of(context).size.height;

  double commonBottomSpace() => MediaQuery.of(context).size.height / 40;

  BorderRadiusGeometry commonCurve() => const BorderRadius.vertical(
        bottom: Radius.elliptical(100, 75),
      );

  static getGetInTouchOrContactMe() {
    locator<NavigationService>().scrolleTo(
      locator<NavigationService>().contactPagerKey,
    );
  }

  static getResume() {
    js.context.callMethod("open", [
      "https://drive.google.com/file/d/1TuaQDr3tE7JbN1b6OiJGtUbPkV1LJyyu/view"
    ]);
  }
}

List<NavBarMenuModel> menuForAppBar = [
  NavBarMenuModel(
    title: "Home",
    globalKey: locator<NavigationService>().homePageKey,
    index: 4,
  ),
  NavBarMenuModel(
    title: "About",
    globalKey: locator<NavigationService>().aboutPageKey,
    index: 3,
  ),
  NavBarMenuModel(
    title: "Why choose flutter",
    globalKey: locator<NavigationService>().whyChooseFLutterDeveloperPageKey,
    index: 2,
  ),
  // NavBarMenuModel(
  //   title: "resume",
  //   globalKey: locator<NavigationService>().homePageKey,
  // ),
  NavBarMenuModel(
    title: "Project",
    globalKey: locator<NavigationService>().projectPageKey,
    index: 1,
  ),
  NavBarMenuModel(
    title: "Contact",
    globalKey: locator<NavigationService>().contactPagerKey,
    index: 0,
  ),
];

class NavBarMenuModel {
  final GlobalKey? globalKey;
  final String title;
  final int index;

  bool isSelected = false;

  NavBarMenuModel({
    this.globalKey,
    required this.title,
    required this.index,
  });
}
