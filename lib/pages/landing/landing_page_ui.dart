import 'package:flutter/material.dart';
import 'package:portfolio/common/app_bar.dart';
import 'package:portfolio/common/layout_builder.dart';
import 'package:portfolio/common/navbar/drawer/drawernav.dart';
import 'package:portfolio/pages/about/about_page.dart';
import 'package:portfolio/pages/contact/contact_page.dart';
import 'package:portfolio/pages/home/home_page.dart';
import 'package:portfolio/pages/project/project_page.dart';
import 'package:portfolio/pages/why_choose_flutter/why_choose_flutter_page.dart';
import 'package:portfolio/routing/navigation_service.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomLayoutBuilder(
        desktop: LandingPageDesktopView(),
        mobile: LandingPageMobileView(),
        tablet: LandingPageTabView(),
      ),
    );
  }
}

class LandingPageDesktopView extends StatefulWidget {
  const LandingPageDesktopView({super.key});

  @override
  State<LandingPageDesktopView> createState() => _LandingPageDesktopViewState();
}

class _LandingPageDesktopViewState extends State<LandingPageDesktopView> {
  @override
  void initState() {
    super.initState();
    locator<NavigationService>().scrolleTo(
      locator<NavigationService>().projectPageKey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Scrollbar(
            controller: locator<NavigationService>().scrollController,
            child: SingleChildScrollView(
              controller: locator<NavigationService>().scrollController,
              child: Column(
                children: [
                  HomePage(
                    key: locator<NavigationService>().homePageKey,
                  ),
                  AboutPage(
                    key: locator<NavigationService>().aboutPageKey,
                  ),
                  WhyChooseFlutterDeveloperPage(
                    key: locator<NavigationService>()
                        .whyChooseFLutterDeveloperPageKey,
                  ),
                  ProjectPage(
                    key: locator<NavigationService>().projectPageKey,
                  ),
                  ContactPage(
                    key: locator<NavigationService>().contactPagerKey,
                  ),
                ],
              ),
            ),
          ),
          const CustomAppBar(),
        ],
      ),
    );
  }
}

class LandingPageTabView extends StatelessWidget {
  const LandingPageTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LandingPageMobileView extends StatelessWidget {
  const LandingPageMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: CustomNavigationDrawer(),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                HomePage(),
                AboutPage(),
                WhyChooseFlutterDeveloperPage(),
              ],
            ),
          ),
          AppBarMobileView(),
        ],
      ),
    );
  }
}
