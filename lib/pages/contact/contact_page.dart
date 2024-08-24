import 'package:flutter/material.dart';
import 'package:portfolio/common/defualt.dart';
import 'package:portfolio/common/layout_builder.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      desktop: ContactPageDesktopView(),
      mobile: ContactPageMobileView(),
      tablet: ContactPageTabView(),
    );
  }
}

class ContactPageDesktopView extends StatelessWidget {
  const ContactPageDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "Contact DeskTop View",
    );
  }
}

class ContactPageMobileView extends StatelessWidget {
  const ContactPageMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "Contact Mobile View",
    );
  }
}

class ContactPageTabView extends StatelessWidget {
  const ContactPageTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "Contact Tab View",
    );
  }
}
