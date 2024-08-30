import 'package:flutter/material.dart';
import 'package:portfolio/common/layout_builder.dart';
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
        mobile: LandingPageDesktopView(),
        tablet: LandingPageDesktopView(),
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
  // void _handleScrollChange() {
  //   setState(() {
  //     locator<NavigationService>().getCurrentPageName();
  //   });
  // }

  // void _handlePositionAttach(ScrollPosition position) {
  //   position.isScrollingNotifier.addListener(_handleScrollChange);
  // }

  @override
  void initState() {
    // locator<NavigationService>().scrollController = ScrollController(
    //   onAttach: _handlePositionAttach,
    // );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
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
    );
  }
}

class LandingPageTabView extends StatefulWidget {
  const LandingPageTabView({super.key});

  @override
  State<LandingPageTabView> createState() => _LandingPageTabViewState();
}

class _LandingPageTabViewState extends State<LandingPageTabView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
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
    );
  }
}

class LandingPageMobileView extends StatefulWidget {
  const LandingPageMobileView({super.key});

  @override
  State<LandingPageMobileView> createState() => _LandingPageMobileViewState();
}

class _LandingPageMobileViewState extends State<LandingPageMobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
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
    );
  }
}
