import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/layout_builder.dart';
import 'package:portfolio/common/navbar/drawer/drawernav.dart';
import 'package:portfolio/routing/navigation_service.dart';
import 'package:portfolio/utils/const.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      desktop: AppBarDesktopView(),
      mobile: AppBarMobileView(),
      tablet: AppBarTabView(),
    );
  }
}

class AppBarDesktopView extends StatefulWidget {
  const AppBarDesktopView({super.key});

  @override
  State<AppBarDesktopView> createState() => _AppBarDesktopViewState();
}

class _AppBarDesktopViewState extends State<AppBarDesktopView> {
  void _handleScrollChange() {
    setState(() {
      locator<NavigationService>().getCurrentPageName();
    });
  }

  void _handlePositionAttach(ScrollPosition position) {
    position.isScrollingNotifier.addListener(_handleScrollChange);
  }

  @override
  void initState() {
    locator<NavigationService>().scrollController = ScrollController(
      onAttach: _handlePositionAttach,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: Const(context).width() / 1.2,
      height: Const(context).height() / 13,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          menuForAppBar.length,
          (int index) {
            return TextButton(
              onPressed: () {
                locator<NavigationService>()
                    .scrolleTo(menuForAppBar[index].globalKey!);
              },
              onHover: (value) {
                setState(() {
                  menuForAppBar[index].isSelected = value;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: BorderDirectional(
                      bottom: BorderSide(
                    color: menuForAppBar[index].isSelected == true
                        ? Colors.orange
                        : Colors.transparent,
                  )),
                ),
                child: NavbarItem(
                  menuForAppBar[index].title,
                  menuForAppBar[index].globalKey!,
                  isSelectes: menuForAppBar[index].isSelected,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AppBarMobileView extends StatefulWidget {
  const AppBarMobileView({super.key});

  @override
  State<AppBarMobileView> createState() => _AppBarMobileViewState();
}

class _AppBarMobileViewState extends State<AppBarMobileView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: Const(context).width() / 1.1,
      height: Const(context).height() / 20,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            alignment: Alignment.topRight,
            icon: const Icon(
              FontAwesomeIcons.bars,
            ),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
    );
  }
}

class AppBarTabView extends StatelessWidget {
  const AppBarTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home Tab View"),
    );
  }
}
