import 'package:flutter/material.dart';
import 'package:portfolio/common/defualt.dart';
import 'package:portfolio/common/layout_builder.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      desktop: ProjectPageDesktopView(),
      mobile: ProjectPageMobileView(),
      tablet: ProjectPageTabView(),
    );
  }
}

class ProjectPageDesktopView extends StatelessWidget {
  const ProjectPageDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "DeskTop View",
    );
  }
}

class ProjectPageMobileView extends StatelessWidget {
  const ProjectPageMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "Mobile View",
    );
  }
}

class ProjectPageTabView extends StatelessWidget {
  const ProjectPageTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "Tab View",
    );
  }
}
