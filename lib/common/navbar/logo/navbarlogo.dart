import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => const NavbarLogoMob(),
      tablet: (p0) => const NavbarLogoMob(),
      desktop: (p0) => const NavbarLogoDesk(),
    );
  }
}

class NavbarLogoMob extends StatelessWidget {
  const NavbarLogoMob({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 80,
        child: Row(
          children: [
            Text(
              '<',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Parth Pandya',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 16,
                fontFamily: 'AmalfiCoast',
              ),
            ),
            Text(
              '/',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            Text(
              '>',
              style: TextStyle(fontSize: 20),
            )
          ],
        ));
  }
}

class NavbarLogoDesk extends StatelessWidget {
  const NavbarLogoDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '<',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            ' Parth Pandya',
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 26,
                fontFamily: 'AmalfiCoast'),
          ),
          Text(
            '/',
            style: TextStyle(color: Colors.grey, fontSize: 40),
          ),
          Text(
            '>',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
