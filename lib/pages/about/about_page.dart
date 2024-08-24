import 'package:flutter/material.dart';
import 'package:portfolio/common/defualt.dart';
import 'package:portfolio/common/layout_builder.dart';
import 'package:portfolio/utils/const.dart';

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
    return Container(
      width: Const(context).width(),
      height: Const(context).height(),
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(bottom: Const(context).height() / 12),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
          color: Colors.black,
        ),
        child: const Center(
          child: Text(
            "pageName",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class AboutePageMobileView extends StatelessWidget {
  const AboutePageMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "About Mobile View",
    );
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
