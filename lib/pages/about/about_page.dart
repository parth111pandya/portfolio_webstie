import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/defualt.dart';
import 'package:portfolio/common/layout_builder.dart';
import 'package:portfolio/routing/navigation_service.dart';
import 'package:portfolio/utils/const.dart';
import 'dart:js' as js;

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      desktop: AboutePageDesktopView(),
      mobile: AboutePageMobileView(),
      tablet: AboutePageTabView(),
    );
  }
}

class AboutePageDesktopView extends StatelessWidget {
  const AboutePageDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final double iconSize = Const(context).width() / 50;
    return Container(
      width: Const(context).width(),
      height: Const(context).height(),
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(80, 80),
          ),
        ),
        margin: EdgeInsets.only(
          bottom: Const(context).height() / 15,
        ),
        padding: EdgeInsets.only(
          left: Const(context).width() / 8,
          right: Const(context).width() / 8,
          top: Const(context).height() / 13,
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  30,
                ),
                child: Image.asset(
                  "assets/images/coding_person_2.jpg",
                  height: Const(context).height() / 1.8,
                ),
              ),
              SizedBox(
                width: Const(context).width() / 50,
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "About Me",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontFamily: "JetBrainsMono-Bold",
                      ),
                    ),
                    Text(
                      "//Flutter Developer",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 20,
                        fontFamily: "JetBrainsMono-Bold",
                      ),
                    ),
                    SizedBox(
                      height: Const(context).height() / 30,
                    ),
                    Text(
                      """Hi, I’m Parth Pandya, a mobile app developer who loves turning ideas into smooth, functional experiences. With over 2 years of experience in Flutter, I focus on building apps that are not only fast and reliable but also a joy to use.""",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            Theme.of(context).textTheme.labelLarge!.fontSize,
                      ),
                    ),
                    SizedBox(
                      height: Const(context).height() / 40,
                    ),
                    Text(
                      """I’m passionate about crafting apps that solve real problems and make life easier for users. From writing clean code to optimizing performance, I’m all about getting the details right.""",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            Theme.of(context).textTheme.labelLarge!.fontSize,
                      ),
                    ),
                    SizedBox(
                      height: Const(context).height() / 40,
                    ),
                    Text(
                      """Hi, I’m Parth Pandya, a mobile app developer who loves turning ideas into smooth, functional experiences. With over 2 years of experience in Flutter, I focus on building apps that are not only fast and reliable but also a joy to use.""",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            Theme.of(context).textTheme.labelLarge!.fontSize,
                      ),
                    ),
                    SizedBox(
                      height: Const(context).height() / 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 136,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                locator<NavigationService>().scrolleTo(
                                  locator<NavigationService>().contactPagerKey,
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                // shadowColor: Colors.black,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                // elevation: 10,
                              ),
                              child: const Text(
                                'Contact Me',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                                width: iconSize + 20,
                                height: iconSize + 20,
                                child: IconButton(
                                  icon: Icon(FontAwesomeIcons.whatsapp,
                                      color: Colors.grey.shade500,
                                      // color: Colors.green,
                                      size: iconSize),
                                  onPressed: () {
                                    js.context.callMethod("open",
                                        ["https://wa.me/+971523916556"]);
                                  },
                                )),
                            SizedBox(
                                width: iconSize + 20,
                                height: iconSize + 20,
                                child: IconButton(
                                  icon: Icon(FontAwesomeIcons.linkedin,
                                      color: Colors.grey.shade500,
                                      size: iconSize),
                                  onPressed: () {
                                    js.context.callMethod("open", [
                                      "https://www.linkedin.com/in/parthpandya1510/"
                                    ]);
                                  },
                                )),
                            SizedBox(
                                width: iconSize + 20,
                                height: iconSize + 20,
                                child: IconButton(
                                  icon: Icon(FontAwesomeIcons.github,
                                      color: Colors.grey.shade500,
                                      size: iconSize),
                                  onPressed: () {
                                    js.context.callMethod("open",
                                        ["https://github.com/parth111pandya"]);
                                  },
                                )),
                            SizedBox(
                                width: iconSize + 20,
                                height: iconSize + 20,
                                child: IconButton(
                                  icon: Icon(FontAwesomeIcons.at,
                                      color: Colors.grey.shade500,
                                      size: iconSize),
                                  onPressed: () {
                                    js.context.callMethod("open",
                                        ["mailto:parthpandya1510@gmail.com"]);
                                  },
                                )),
                            SizedBox(
                                width: iconSize + 20,
                                height: iconSize + 20,
                                child: IconButton(
                                  icon: Icon(FontAwesomeIcons.instagram,
                                      color: Colors.grey.shade500,
                                      size: iconSize),
                                  onPressed: () {
                                    js.context.callMethod("open", [
                                      "https://www.instagram.com/parthu.___/?igsh=MWZ1Zm43YjI3ZGdraw%3D%3D&utm_source=qr"
                                    ]);
                                  },
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutePageMobileView extends StatelessWidget {
  const AboutePageMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "About Mobile View",
    );
  }
}

class AboutePageTabView extends StatelessWidget {
  const AboutePageTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "About Tab View",
    );
  }
}
