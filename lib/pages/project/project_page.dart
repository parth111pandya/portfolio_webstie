import 'package:flutter/material.dart';
import 'package:portfolio/common/defualt.dart';
import 'package:portfolio/common/layout_builder.dart';
import 'package:portfolio/utils/const.dart';

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

class ProjectPageDesktopView extends StatefulWidget {
  const ProjectPageDesktopView({super.key});

  @override
  State<ProjectPageDesktopView> createState() => _ProjectPageDesktopViewState();
}

class _ProjectPageDesktopViewState extends State<ProjectPageDesktopView> {
  bool isShowBoder = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Const(context).height(),
      width: Const(context).width(),
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(100, 75),
          ),
        ),
        margin: EdgeInsets.only(bottom: Const(context).height() / 12),
        padding: EdgeInsets.symmetric(
          horizontal: Const(context).width() / 30,
          vertical: Const(context).height() / 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  isShowBoder = true;
                });
              },
              onExit: (event) {
                setState(() {
                  isShowBoder = false;
                });
              },
              child: SizedBox(
                height: Const(context).height() / 2,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/coding_person_2.jpg',
                      height: Const(context).height() / 4 + 5,
                      width: Const(context).width() / 8,
                      fit: BoxFit.fitWidth,
                    ),
                    ContainerWithDashedBorder(
                      isShowBoder: isShowBoder,
                      child: Container(
                        width: Const(context).width() / 8,
                        height: Const(context).height() / 2 -
                            Const(context).height() / 4 -
                            10,
                        color: isShowBoder ? Colors.black : Colors.white,
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          "String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, ",
                          style: TextStyle(
                            color: isShowBoder ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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

class ContainerWithDashedBorder extends StatelessWidget {
  final Widget child;
  final bool isShowBoder;

  const ContainerWithDashedBorder({
    super.key,
    required this.child,
    required this.isShowBoder,
  });

  @override
  Widget build(BuildContext context) {
    return isShowBoder
        ? CustomPaint(
            painter: DashPainter(),
            child: Container(
              alignment: Alignment.center,
              child: child,
            ),
          )
        : Container(
            alignment: Alignment.center,
            child: child,
          );
  }
}

class DashPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    // Define the dash pattern
    double dashWidth = 10, dashSpace = 6;
    final Path path = Path();

    // // Top side
    // for (double i = 0; i < size.width; i += dashWidth + dashSpace) {
    //   path.moveTo(i, 0);
    //   path.lineTo(i + dashWidth, 0);
    // }

    // Left side
    for (double i = 0; i < size.height; i += dashWidth + dashSpace) {
      path.moveTo(0, i);
      path.lineTo(0, i + dashWidth);
    }

    // Right side
    for (double i = 0; i < size.height; i += dashWidth + dashSpace) {
      path.moveTo(size.width, i);
      path.lineTo(size.width, i + dashWidth);
    }

// Bottom side
    for (double i = 0; i < size.width; i += dashWidth + dashSpace) {
      path.moveTo(i, size.height);
      path.lineTo(i + dashWidth, size.height);
    }
    // Draw the dashed path
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
