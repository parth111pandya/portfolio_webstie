import 'package:flutter/material.dart';
import 'package:portfolio/common/defualt.dart';
import 'package:portfolio/common/layout_builder.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      desktop: AboutePageDesktopView(),
      mobile: AboutePageMobileView(),
      tablet: AboutePageTabView(),
    );
  }
}

class AboutePageDesktopView extends StatelessWidget {
  const AboutePageDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "About DeskTop View",
    );
    ;
  }
}

class AboutePageMobileView extends StatelessWidget {
  const AboutePageMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "About Mobile View",
    );
    ;
  }
}

class AboutePageTabView extends StatelessWidget {
  const AboutePageTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "About Tab View",
    );
  }
}
