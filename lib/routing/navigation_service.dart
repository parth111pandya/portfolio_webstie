import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio/utils/const.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey homePageKey = GlobalKey();
  final GlobalKey aboutPageKey = GlobalKey();
  final GlobalKey whyChooseFLutterDeveloperPageKey = GlobalKey();
  final GlobalKey projectPageKey = GlobalKey();
  final GlobalKey contactPagerKey = GlobalKey();
  ScrollController scrollController = ScrollController();

  int selectedIndex = 4;

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic> scrolleTo(GlobalKey globalKey) async {
    await Future.delayed(const Duration(milliseconds: 500));

    return Scrollable.ensureVisible(
      globalKey.currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  int customRound(double value) {
    // Determine if the value is within a specific range
    if (value % 1 < 0.2) {
      return value.floor(); // Round down
    } else {
      return value.ceil(); // Round up
    }
  }

  num getCurrentPageName() {
    double viewpoint = scrollController.position.viewportDimension;
    double offset = scrollController.offset;
    double maxScrollExtent = scrollController.position.maxScrollExtent;
    double index = (maxScrollExtent - offset) / viewpoint;
    selectedIndex = customRound(index);

    for (var element in menuForAppBar) {
      if (element.index == selectedIndex) {
        element.isSelected = true;
      } else {
        element.isSelected = false;
      }
    }
    return selectedIndex;
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}
