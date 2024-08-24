import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/routing/navigation_service.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        width: 300,
        child: Column(
          children: <Widget>[
            DrawerItem(
              'Home',
              FontAwesomeIcons.house,
              locator<NavigationService>().homePageKey,
            ),
            DrawerItem(
              'About',
              FontAwesomeIcons.briefcase,
              locator<NavigationService>().aboutPageKey,
            ),
            DrawerItem(
              'Why Choose Flutter Developer',
              FontAwesomeIcons.listCheck,
              locator<NavigationService>().whyChooseFLutterDeveloperPageKey,
            ),
            DrawerItem(
              'Projects',
              FontAwesomeIcons.graduationCap,
              locator<NavigationService>().projectPageKey,
            ),
            DrawerItem(
              'Contact',
              FontAwesomeIcons.trophy,
              locator<NavigationService>().contactPagerKey,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final GlobalKey navigationKey;

  const DrawerItem(
    this.title,
    this.icon,
    this.navigationKey, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          const SizedBox(
            width: 30,
          ),
          NavbarItem(
            title,
            navigationKey,
          ),
        ],
      ),
    );
  }
}

class NavbarItem extends StatelessWidget {
  final String title;
  final GlobalKey navigationKey;
  final bool isSelectes;

  const NavbarItem(
    this.title,
    this.navigationKey, {
    this.isSelectes = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).closeEndDrawer();
        locator<NavigationService>().scrolleTo(navigationKey);
      },
      child: Text(
        title,
        style: TextStyle(
          color: isSelectes ? Colors.orange : Colors.grey.shade500,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
