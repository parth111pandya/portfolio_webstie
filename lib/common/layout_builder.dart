import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomLayoutBuilder extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  const CustomLayoutBuilder({
    super.key,
    this.desktop,
    this.mobile,
    this.tablet,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => ScreenTypeLayout.builder(
        mobile: (p0) => mobile!,
        desktop: (p0) => desktop!,
        tablet: (p0) => tablet!,
      ),
    );
  }
}
