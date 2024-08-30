import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/layout_builder.dart';
import 'package:portfolio/pages/project/project_model_and_const.dart';
import 'package:portfolio/utils/const.dart';
import 'dart:js' as js;

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

class _ProjectPageDesktopViewState extends State<ProjectPageDesktopView>
    with TickerProviderStateMixin {
  final ScrollController _controller = ScrollController();

// This is what you're looking for!
  void _scrollDown(bool toEnd) {
    _controller.animateTo(
      toEnd
          ? _controller.position.maxScrollExtent
          : _controller.position.minScrollExtent,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Const(context).getHeight(),
      width: Const(context).getWidth(),
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(100, 75),
          ),
        ),
        margin: EdgeInsets.only(bottom: Const(context).commonBottomSpace()),
        padding: EdgeInsets.symmetric(
          horizontal: Const(context).getWidth() / 30,
          vertical: Const(context).getHeight() / 8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Projects",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "FLUTTER CRAFTSMANSHIP: BUILDING SMOOTH, INTUITIVE UIs THAT WOW AND WORK SEAMLESSLY!",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.labelLarge!.color,
                      fontSize:
                          Theme.of(context).textTheme.labelLarge!.fontSize,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 35,
                  width: 35,
                  child: IconButton(
                    color: Colors.orange,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      padding:
                          const WidgetStatePropertyAll(EdgeInsets.all(0.0)),
                      shape: const WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                    onPressed: () => _scrollDown(false),
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ),
                SizedBox(
                  width: Const(context).getWidth() / 90,
                ),
                SizedBox(
                  height: 35,
                  width: 35,
                  child: IconButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        Colors.orange,
                      ),
                      padding:
                          const WidgetStatePropertyAll(EdgeInsets.all(0.0)),
                      shape: const WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                    onPressed: () => _scrollDown(true),
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Const(context).getHeight() / 40,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: projectList.length,
                shrinkWrap: true,
                controller: _controller,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          projectList[index].isHover = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          projectList[index].isHover = false;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                              child: Container(
                                color: projectList[index].bgColor,
                                padding: EdgeInsets.all(8),
                                width: Const(context).getWidth() / 6,
                                child: projectList[index].imagePath.isNotEmpty
                                    ? Image.asset(
                                        projectList[index].imagePath,
                                        scale: projectList[index].scale,
                                      )
                                    : const FlutterLogo(
                                        // size: 10,
                                        style: FlutterLogoStyle.horizontal,
                                      ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ContainerWithDashedBorder(
                              isShowBoder: projectList[index].isHover,
                              child: Container(
                                width: Const(context).getWidth() / 6,
                                // height: Const(context).getHeight() / 1.9 -
                                //     Const(context).getHeight() / 4 -
                                //     10,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.vertical(
                                      bottom: Radius.circular(20)),
                                  color: projectList[index].isHover
                                      ? const Color(0xFF141414)
                                      : const Color(0xFFF5F5F5),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                        bottom:
                                            5, // Space between underline and text
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: projectList[index].isHover
                                                ? Colors.white
                                                : Colors.grey.shade600,
                                            width: 1.0, // Underline thickness
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        projectList[index].title,
                                        style: TextStyle(
                                          color: projectList[index].isHover
                                              ? Colors.white
                                              : Colors.black,
                                          fontFamily: "JetBrainsMono-Bold",
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Const(context).getHeight() / 60,
                                    ),
                                    Text(
                                      projectList[index].deception,
                                      style: TextStyle(
                                        color: projectList[index].isHover
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 12,
                                        fontFamily: "JetBrainsMono-Bold",
                                      ),
                                    ),
                                    const Spacer(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        projectList[index]
                                                .playStoreUrl!
                                                .isNotEmpty
                                            ? IconButton(
                                                icon: const Icon(
                                                  FontAwesomeIcons.android,
                                                  color: Colors.green,
                                                ),
                                                onPressed: () {
                                                  js.context.callMethod(
                                                      "open", [
                                                    projectList[index]
                                                        .playStoreUrl
                                                  ]);
                                                },
                                              )
                                            : Container(),
                                        projectList[index]
                                                .appStoreUrl!
                                                .isNotEmpty
                                            ? IconButton(
                                                icon: Icon(
                                                  FontAwesomeIcons.apple,
                                                  color:
                                                      projectList[index].isHover
                                                          ? Colors.white
                                                          : Colors.black,
                                                ),
                                                onPressed: () {
                                                  js.context.callMethod(
                                                      "open", [
                                                    projectList[index]
                                                        .appStoreUrl
                                                  ]);
                                                },
                                              )
                                            : Container(),
                                        projectList[index].webUrl != null &&
                                                projectList[index]
                                                    .webUrl!
                                                    .isNotEmpty
                                            ? IconButton(
                                                icon: const Icon(
                                                  FontAwesomeIcons.desktop,
                                                  color: Colors.blue,
                                                ),
                                                onPressed: () {
                                                  js.context.callMethod(
                                                      "open", [
                                                    projectList[index].webUrl
                                                  ]);
                                                },
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPageMobileView extends StatefulWidget {
  const ProjectPageMobileView({super.key});

  @override
  State<ProjectPageMobileView> createState() => _ProjectPageMobileViewState();
}

class _ProjectPageMobileViewState extends State<ProjectPageMobileView>
    with TickerProviderStateMixin {
  final ScrollController _controller = ScrollController();

// This is what you're looking for!
  void _scrollDown(bool toEnd) {
    _controller.animateTo(
      toEnd
          ? _controller.position.maxScrollExtent
          : _controller.position.minScrollExtent,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<ProjectModel> _items = projectList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Const(context).getHeight(),
      width: Const(context).getWidth(),
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(100, 75),
          ),
        ),
        margin: EdgeInsets.only(bottom: Const(context).commonBottomSpace()),
        padding: EdgeInsets.symmetric(
          horizontal: Const(context).getWidth() / 30,
          vertical: Const(context).getHeight() / 30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Projects",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:
                          Theme.of(context).textTheme.titleSmall!.fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "FLUTTER CRAFTSMANSHIP: BUILDING SMOOTH, INTUITIVE UIs THAT WOW AND WORK SEAMLESSLY!",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.labelSmall!.color,
                      fontSize:
                          Theme.of(context).textTheme.labelSmall!.fontSize,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Const(context).getHeight() / 40,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: IconButton(
                    color: Colors.orange,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      padding:
                          const WidgetStatePropertyAll(EdgeInsets.all(0.0)),
                      shape: const WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                    onPressed: () => _scrollDown(false),
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ),
                SizedBox(
                  width: Const(context).getWidth() / 40,
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: IconButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        Colors.orange,
                      ),
                      padding:
                          const WidgetStatePropertyAll(EdgeInsets.all(0.0)),
                      shape: const WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                    onPressed: () => _scrollDown(true),
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: Const(context).getHeight() / 40,
            ),
            SizedBox(
              width: double.infinity,
              height: Const(context).getHeight() / 1.5,
              child: SingleChildScrollView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.vertical,
                  runSpacing: 8,
                  spacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: _items
                      .map((item) => Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                                child: Container(
                                  color: item.bgColor,
                                  height: Const(context).getHeight() / 8,
                                  width: Const(context).getWidth() / 3,
                                  padding: const EdgeInsets.all(8),
                                  child: item.imagePath.isNotEmpty
                                      ? Image.asset(
                                          item.imagePath,
                                        )
                                      : const FlutterLogo(),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.vertical(
                                      bottom: Radius.circular(20)),
                                  color: item.isHover
                                      ? const Color(0xFF141414)
                                      : const Color(0xFFF5F5F5),
                                ),
                                padding: const EdgeInsets.all(8),
                                width: Const(context).getWidth() / 3,
                                height: Const(context).getHeight() / 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      item.title,
                                      style: TextStyle(
                                        color: item.isHover
                                            ? Colors.white
                                            : Colors.black,
                                        fontFamily: "JetBrainsMono-Bold",
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .fontSize,
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: Const(context).getHeight() / 60,
                                    // ),
                                    // Text(
                                    //   projectList[index].deception,
                                    //   style: TextStyle(
                                    //     color: projectList[index].isHover
                                    //         ? Colors.white
                                    //         : Colors.black,
                                    //     fontFamily: "JetBrainsMono-Bold",
                                    //     fontSize: Theme.of(context)
                                    //         .textTheme
                                    //         .labelSmall!
                                    //         .fontSize,
                                    //   ),
                                    // ),
                                    const Spacer(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        item.playStoreUrl!.isNotEmpty
                                            ? IconButton(
                                                icon: const Icon(
                                                  FontAwesomeIcons.android,
                                                  color: Colors.green,
                                                ),
                                                onPressed: () {
                                                  js.context.callMethod("open",
                                                      [item.playStoreUrl]);
                                                },
                                              )
                                            : Container(),
                                        item.appStoreUrl!.isNotEmpty
                                            ? IconButton(
                                                icon: Icon(
                                                  FontAwesomeIcons.apple,
                                                  color: item.isHover
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                                onPressed: () {
                                                  js.context.callMethod("open",
                                                      [item.appStoreUrl]);
                                                },
                                              )
                                            : Container(),
                                        item.webUrl != null &&
                                                item.webUrl!.isNotEmpty
                                            ? IconButton(
                                                icon: const Icon(
                                                  FontAwesomeIcons.desktop,
                                                  color: Colors.blue,
                                                ),
                                                onPressed: () {
                                                  js.context.callMethod(
                                                      "open", [item.webUrl]);
                                                },
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ))
                      .toList(),
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

class ProjectPageTabView extends StatefulWidget {
  const ProjectPageTabView({super.key});

  @override
  State<ProjectPageTabView> createState() => _ProjectPageTabViewState();
}

class _ProjectPageTabViewState extends State<ProjectPageTabView>
    with TickerProviderStateMixin {
  final ScrollController _controller = ScrollController();

// This is what you're looking for!
  void _scrollDown(bool toEnd) {
    _controller.animateTo(
      toEnd
          ? _controller.position.maxScrollExtent
          : _controller.position.minScrollExtent,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Const(context).getHeight(),
      width: Const(context).getWidth(),
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(100, 75),
          ),
        ),
        margin: EdgeInsets.only(
          bottom: Const(context).commonBottomSpace(),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Const(context).getWidth() / 30,
          vertical: Const(context).getHeight() / 15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Projects",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:
                          Theme.of(context).textTheme.titleMedium!.fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "FLUTTER CRAFTSMANSHIP: BUILDING SMOOTH, INTUITIVE UIs THAT WOW AND WORK SEAMLESSLY!",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.labelMedium!.color,
                      fontSize:
                          Theme.of(context).textTheme.labelMedium!.fontSize,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 35,
                  width: 35,
                  child: IconButton(
                    color: Colors.orange,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      padding:
                          const WidgetStatePropertyAll(EdgeInsets.all(0.0)),
                      shape: const WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                    onPressed: () => _scrollDown(false),
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                  ),
                ),
                SizedBox(
                  width: Const(context).getWidth() / 90,
                ),
                SizedBox(
                  height: 35,
                  width: 35,
                  child: IconButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        Colors.orange,
                      ),
                      padding:
                          const WidgetStatePropertyAll(EdgeInsets.all(0.0)),
                      shape: const WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                    onPressed: () => _scrollDown(true),
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: Const(context).getHeight() / 1.9,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: projectList.length,
                shrinkWrap: true,
                controller: _controller,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                          child: Container(
                            color: projectList[index].bgColor,
                            height: Const(context).getHeight() / 5,
                            width: Const(context).getWidth() / 3,
                            child: projectList[index].imagePath.isNotEmpty
                                ? Image.asset(
                                    projectList[index].imagePath,
                                    scale: projectList[index].scale,
                                  )
                                : const FlutterLogo(
                                    // size: 10,
                                    style: FlutterLogoStyle.horizontal,
                                  ),
                          ),
                        ),
                        ContainerWithDashedBorder(
                          isShowBoder: projectList[index].isHover,
                          child: Container(
                            width: Const(context).getWidth() / 3,
                            height: Const(context).getHeight() / 1.9 -
                                Const(context).getHeight() / 5,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.vertical(
                                  bottom: Radius.circular(20)),
                              color: projectList[index].isHover
                                  ? const Color(0xFF141414)
                                  : const Color(0xFFF5F5F5),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    bottom:
                                        5, // Space between underline and text
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: projectList[index].isHover
                                            ? Colors.white
                                            : Colors.grey.shade600,
                                        width: 1.0, // Underline thickness
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    projectList[index].title,
                                    style: TextStyle(
                                      color: projectList[index].isHover
                                          ? Colors.white
                                          : Colors.black,
                                      fontFamily: "JetBrainsMono-Bold",
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Const(context).getHeight() / 60,
                                ),
                                Text(
                                  projectList[index].deception,
                                  style: TextStyle(
                                    color: projectList[index].isHover
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 12,
                                    fontFamily: "JetBrainsMono-Bold",
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    projectList[index].playStoreUrl!.isNotEmpty
                                        ? IconButton(
                                            icon: const Icon(
                                              FontAwesomeIcons.android,
                                              color: Colors.green,
                                            ),
                                            onPressed: () {
                                              js.context.callMethod("open", [
                                                projectList[index].playStoreUrl
                                              ]);
                                            },
                                          )
                                        : Container(),
                                    projectList[index].appStoreUrl!.isNotEmpty
                                        ? IconButton(
                                            icon: Icon(
                                              FontAwesomeIcons.apple,
                                              color: projectList[index].isHover
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                            onPressed: () {
                                              js.context.callMethod("open", [
                                                projectList[index].appStoreUrl
                                              ]);
                                            },
                                          )
                                        : Container(),
                                    projectList[index].webUrl != null &&
                                            projectList[index]
                                                .webUrl!
                                                .isNotEmpty
                                        ? IconButton(
                                            icon: const Icon(
                                              FontAwesomeIcons.desktop,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {
                                              js.context.callMethod("open",
                                                  [projectList[index].webUrl]);
                                            },
                                          )
                                        : Container(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
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
      ..strokeWidth = 4 // Thicker stroke for bolder appearance
      ..style = PaintingStyle.stroke;

    double dashWidth = 10, dashSpace = 6;
    final Path path = Path();

    // Left side (with bottom curved corner)
    for (double i = 0; i < size.height - 20; i += dashWidth + dashSpace) {
      path.moveTo(0, i);
      path.lineTo(0, i + dashWidth);
    }
    path.moveTo(0, size.height - 20);
    path.arcToPoint(
      Offset(20, size.height),
      radius: const Radius.circular(20),
      clockwise: false,
    );

    // Bottom side (with curved corners)
    for (double i = 20; i < size.width - 20; i += dashWidth + dashSpace) {
      path.moveTo(i, size.height);
      path.lineTo(i + dashWidth, size.height);
    }

    path.moveTo(size.width - 20, size.height);
    path.arcToPoint(
      Offset(size.width, size.height - 20),
      radius: const Radius.circular(20),
      clockwise: false,
    );

    // Right side (with bottom curved corner)
    for (double i = size.height - 20; i >= 0; i -= dashWidth + dashSpace) {
      path.moveTo(size.width, i);
      path.lineTo(size.width, i - dashWidth);
    }

    // Draw the dashed path
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
