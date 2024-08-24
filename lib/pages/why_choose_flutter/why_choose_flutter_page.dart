import 'package:flutter/material.dart';
import 'package:portfolio/common/defualt.dart';
import 'package:portfolio/common/layout_builder.dart';

class WhyChooseFlutterDeveloperPage extends StatelessWidget {
  const WhyChooseFlutterDeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      desktop: WhyChooseFlutterDeveloperDesktopView(),
      mobile: WhyChooseFlutterDeveloperMobileView(),
      tablet: WhyChooseFlutterDeveloperTabView(),
    );
  }
}

class WhyChooseFlutterDeveloperDesktopView extends StatelessWidget {
  const WhyChooseFlutterDeveloperDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "Why choose Flutter Desktop View",
    );
  }
}

class WhyChooseFlutterDeveloperMobileView extends StatelessWidget {
  const WhyChooseFlutterDeveloperMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "Why choose Flutter Mobile View",
    );
  }
}

class WhyChooseFlutterDeveloperTabView extends StatelessWidget {
  const WhyChooseFlutterDeveloperTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "Why choose Flutter Tab View",
    );
  }
}
