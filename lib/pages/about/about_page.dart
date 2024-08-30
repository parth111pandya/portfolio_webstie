import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/custom_widgets/3d_button.dart';
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
    final double iconSize = Const(context).getWidth() / 50;
    return Container(
      width: Const(context).getWidth(),
      height: Const(context).getHeight(),
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(80, 80),
          ),
        ),
        margin: EdgeInsets.only(
          bottom: Const(context).commonBottomSpace(),
        ),
        padding: EdgeInsets.only(
          left: Const(context).getWidth() / 8,
          right: Const(context).getWidth() / 8,
          top: Const(context).getHeight() / 13,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: Const(context).getHeight() / 1.8,
                  width: Const(context).getWidth() / 4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/coding_person_2.jpg",
                      ),
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Const(context).getWidth() / 50,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Me",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              Theme.of(context).textTheme.titleLarge!.fontSize,
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
                        height: Const(context).getHeight() / 30,
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
                        height: Const(context).getHeight() / 40,
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
                        height: Const(context).getHeight() / 40,
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
                        height: Const(context).getHeight() / 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: Const(context).getWidth() / 12,
                            child: PushableButton(
                              height: Const(context).getHeight() / 22,
                              elevation: 8,
                              color: Colors.orange,
                              bottomColor: Colors.white,
                              shadow: BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 2),
                              ),
                              onPressed: () => Const.getGetInTouchOrContactMe(),
                              child: const Text(
                                'Contact Me',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
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
                                      js.context.callMethod("open", [
                                        "https://github.com/parth111pandya"
                                      ]);
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
            const Spacer(
              flex: 2,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  locator<NavigationService>().scrolleTo(
                    locator<NavigationService>()
                        .whyChooseFLutterDeveloperPageKey,
                  );
                },
                child: Image.asset(
                  "assets/gifs/scroll_down_1.gif",
                  height: Const(context).getHeight() / 12,
                  color: Colors.orange,
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class AboutePageMobileView extends StatelessWidget {
  const AboutePageMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final double iconSize = Const(context).getWidth() / 15;
    return Container(
      width: Const(context).getWidth(),
      height: Const(context).getHeight(),
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(80, 80),
          ),
        ),
        margin: EdgeInsets.only(
          bottom: Const(context).commonBottomSpace(),
        ),
        padding: EdgeInsets.only(
          left: Const(context).getWidth() / 20,
          right: Const(context).getWidth() / 20,
          top: Const(context).getHeight() / 30,
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Const(context).getHeight() / 60,
                ),
                Text(
                  "About Me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                    fontFamily: "JetBrainsMono-Bold",
                  ),
                ),
                Text(
                  "//Flutter Developer",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: Theme.of(context).textTheme.labelSmall!.fontSize,
                    fontFamily: "JetBrainsMono-Bold",
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  """Hi, I’m Parth Pandya, a mobile app developer who loves turning ideas into smooth, functional experiences. With over 2 years of experience in Flutter, I focus on building apps that are not only fast and reliable but also a joy to use.""",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                  ),
                ),
                SizedBox(
                  height: Const(context).getHeight() / 40,
                ),
                Text(
                  """I’m passionate about crafting apps that solve real problems and make life easier for users. From writing clean code to optimizing performance, I’m all about getting the details right.""",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                  ),
                ),
                SizedBox(
                  height: Const(context).getHeight() / 40,
                ),
                Text(
                  """Hi, I’m Parth Pandya, a mobile app developer who loves turning ideas into smooth, functional experiences. With over 2 years of experience in Flutter, I focus on building apps that are not only fast and reliable but also a joy to use.""",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Center(
                  child: SizedBox(
                    width: Const(context).getWidth() / 3,
                    child: PushableButton(
                      height: Const(context).getHeight() / 22,
                      elevation: 8,
                      color: Colors.orange,
                      bottomColor: Colors.white,
                      shadow: BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 2),
                      ),
                      onPressed: () => Const.getGetInTouchOrContactMe(),
                      child: const Text(
                        'Contact Me',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Const(context).getHeight() / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                            js.context.callMethod(
                                "open", ["https://wa.me/+971523916556"]);
                          },
                        )),
                    SizedBox(
                        width: iconSize + 20,
                        height: iconSize + 20,
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.linkedin,
                              color: Colors.grey.shade500, size: iconSize),
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
                              color: Colors.grey.shade500, size: iconSize),
                          onPressed: () {
                            js.context.callMethod(
                                "open", ["https://github.com/parth111pandya"]);
                          },
                        )),
                    SizedBox(
                        width: iconSize + 20,
                        height: iconSize + 20,
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.at,
                              color: Colors.grey.shade500, size: iconSize),
                          onPressed: () {
                            js.context.callMethod(
                                "open", ["mailto:parthpandya1510@gmail.com"]);
                          },
                        )),
                    SizedBox(
                        width: iconSize + 20,
                        height: iconSize + 20,
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.instagram,
                              color: Colors.grey.shade500, size: iconSize),
                          onPressed: () {
                            js.context.callMethod("open", [
                              "https://www.instagram.com/parthu.___/?igsh=MWZ1Zm43YjI3ZGdraw%3D%3D&utm_source=qr"
                            ]);
                          },
                        )),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      locator<NavigationService>().scrolleTo(
                        locator<NavigationService>()
                            .whyChooseFLutterDeveloperPageKey,
                      );
                    },
                    child: Image.asset(
                      "assets/gifs/scroll_down_1.gif",
                      height: Const(context).getHeight() / 18,
                      color: Colors.orange,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
            const Positioned(
              right: 25,
              top: 0,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  "assets/images/coding_person_2.jpg",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutePageTabView extends StatelessWidget {
  const AboutePageTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final double iconSize = Const(context).getWidth() / 20;
    return Container(
      width: Const(context).getWidth(),
      height: Const(context).getHeight(),
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(80, 80),
          ),
        ),
        margin: EdgeInsets.only(
          bottom: Const(context).commonBottomSpace(),
        ),
        padding: EdgeInsets.only(
          left: Const(context).getWidth() / 12,
          right: Const(context).getWidth() / 12,
          top: Const(context).getHeight() / 30,
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Const(context).getHeight() / 60,
                ),
                const Text(
                  "About Me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: "JetBrainsMono-Bold",
                  ),
                ),
                Text(
                  "//Flutter Developer",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                    fontFamily: "JetBrainsMono-Bold",
                  ),
                ),
                const Spacer(),
                Text(
                  """Hi, I’m Parth Pandya, a mobile app developer who loves turning ideas into smooth, functional experiences. With over 2 years of experience in Flutter, I focus on building apps that are not only fast and reliable but also a joy to use.""",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                  ),
                ),
                SizedBox(
                  height: Const(context).getHeight() / 40,
                ),
                Text(
                  """I’m passionate about crafting apps that solve real problems and make life easier for users. From writing clean code to optimizing performance, I’m all about getting the details right.""",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                  ),
                ),
                SizedBox(
                  height: Const(context).getHeight() / 40,
                ),
                Text(
                  """Hi, I’m Parth Pandya, a mobile app developer who loves turning ideas into smooth, functional experiences. With over 2 years of experience in Flutter, I focus on building apps that are not only fast and reliable but also a joy to use.""",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: Const(context).getWidth() / 6,
                      child: PushableButton(
                        height: Const(context).getHeight() / 22,
                        elevation: 8,
                        color: Colors.orange,
                        bottomColor: Colors.white,
                        shadow: BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 2),
                        ),
                        onPressed: () => Const.getGetInTouchOrContactMe(),
                        child: const Text(
                          'Contact Me',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                js.context.callMethod(
                                    "open", ["https://wa.me/+971523916556"]);
                              },
                            )),
                        SizedBox(
                            width: iconSize + 20,
                            height: iconSize + 20,
                            child: IconButton(
                              icon: Icon(FontAwesomeIcons.linkedin,
                                  color: Colors.grey.shade500, size: iconSize),
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
                                  color: Colors.grey.shade500, size: iconSize),
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
                                  color: Colors.grey.shade500, size: iconSize),
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
                                  color: Colors.grey.shade500, size: iconSize),
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
                const Spacer(),
                Center(
                  child: InkWell(
                    onTap: () {
                      locator<NavigationService>().scrolleTo(
                        locator<NavigationService>()
                            .whyChooseFLutterDeveloperPageKey,
                      );
                    },
                    child: Image.asset(
                      "assets/gifs/scroll_down_1.gif",
                      height: Const(context).getHeight() / 18,
                      color: Colors.orange,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            const Positioned(
              right: 40,
              top: 10,
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(
                  "assets/images/coding_person_2.jpg",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
