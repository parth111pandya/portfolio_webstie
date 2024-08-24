import 'package:flutter/material.dart';
import 'package:portfolio/routing/navigation_service.dart';

class Const {
  BuildContext context;

  Const(this.context);

  double width() => MediaQuery.of(context).size.width;
  double height() => MediaQuery.of(context).size.height;
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
