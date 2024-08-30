import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/custom_widgets/3d_button.dart';
import 'package:portfolio/common/layout_builder.dart';
import 'package:portfolio/routing/navigation_service.dart';
import 'package:portfolio/utils/const.dart';
import 'dart:js' as js;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      desktop: HomeDesktopView(),
      mobile: HomeMobileView(),
      tablet: HomeTabView(),
    );
  }
}

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({super.key});

  final String _split = "split ";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Const(context).getHeight(),
      width: Const(context).getWidth(),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: Const(context).commonCurve(),
          image: const DecorationImage(
            image: AssetImage("assets/images/coding_person.jpg"),
            opacity: 0.1,
            fit: BoxFit.cover,
          ),
        ),
        margin: EdgeInsets.only(bottom: Const(context).commonBottomSpace()),
        padding: EdgeInsets.symmetric(
          horizontal: Const(context).getWidth() / 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(Const(context).getHeight() / 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/app_archer_icon.png',
                    height: Const(context).getHeight() / 10,
                  ),
                  Text(
                    "App Archer",
                    style: TextStyle(
                      fontFamily: "earthorbiterbold",
                      fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                      // color: locator<NavigationService>().selectedIndex.isEven
                      //     ? Colors.black
                      //     : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: "Holla!, I’m Parth Pandya and I’m a"
                  .split("split")
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                String letter = entry.value;
                return Text(
                  letter,
                  style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.displayLarge!.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                  ),
                )
                    .animate(
                      delay: (index * 200)
                          .ms, // Delay each character animation by index
                    )
                    .fadeIn(duration: 0.6.seconds) // Fade in each letter
                    .slide(
                      begin: const Offset(0, 0.3), // Start from below (bottom)
                      end: const Offset(0, 0), // End at its original position
                      duration: 0.6.seconds,
                      curve: Curves.easeOut,
                    );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: "Mobile${_split}Application${_split}Developer"
                  .split("split")
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                String letter = entry.value;
                return Text(
                  letter,
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                )
                    .animate(
                      delay: (index * 200)
                          .ms, // Delay each character animation by index
                    )
                    .fadeIn(duration: 0.6.seconds) // Fade in each letter
                    .slide(
                      begin: const Offset(0, 0.3), // Start from below (bottom)
                      end: const Offset(0, 0), // End at its original position
                      duration: 0.6.seconds,
                      curve: Curves.easeOut,
                    );
              }).toList(),
            ),
            SizedBox(
              height: Const(context).getHeight() / 18,
            ),
            Text(
              "I’m the Da Vinci of Flutter, blending art and logic into digital masterpieces.Turning code into creations that are not just functional but truly inspirational. Because every app should be as intuitive as it is beautiful.",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            )
                .animate()
                .fadeIn(
                  duration: 1.seconds, // Fade-in duration
                  delay: const Duration(milliseconds: 670),
                )
                .slide(
                  begin: const Offset(0, 1), // Slide from bottom to top
                  end: const Offset(0, 0), // End at the original position
                  duration: 1.seconds,
                  curve: Curves.easeOut,
                  delay: const Duration(milliseconds: 670),
                ),
            SizedBox(
              height: Const(context).getHeight() / 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: Const(context).getWidth() / 20,
                    ),
                    SizedBox(
                      width: Const(context).getWidth() / 8,
                      child: PushableButton(
                        height: Const(context).getHeight() / 22,
                        elevation: 8,
                        color: Colors.orange,
                        bottomColor: Colors.black,
                        shadow: BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 2),
                        ),
                        onPressed: () => Const.getGetInTouchOrContactMe(),
                        child: const Text(
                          'Get In Touch',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Const(context).getWidth() / 60,
                    ),
                    SizedBox(
                      width: Const(context).getWidth() / 13,
                      child: PushableButton(
                        height: Const(context).getHeight() / 22,
                        elevation: 8,
                        color: Colors.white,
                        bottomColor: Colors.black,
                        shadow: BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 2),
                        ),
                        onPressed: () => Const.getResume(),
                        child: const Text(
                          'Resume',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.grey.shade500,
                            // color: Colors.green,
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod(
                                "open", ["https://wa.me/+971523916556"]);
                          },
                        )),
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.grey.shade500,
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod("open", [
                              "https://www.linkedin.com/in/parthpandya1510/"
                            ]);
                          },
                        )),
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.grey.shade500,
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod(
                                "open", ["https://github.com/parth111pandya"]);
                          },
                        )),
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.at,
                            color: Colors.grey.shade500,
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod(
                                "open", ["mailto:parthpandya1510@gmail.com"]);
                          },
                        )),
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.grey.shade500,
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod("open", [
                              "https://www.instagram.com/parthu.___/?igsh=MWZ1Zm43YjI3ZGdraw%3D%3D&utm_source=qr"
                            ]);
                          },
                        )),
                  ],
                ),
              ],
            )
                .animate()
                .fadeIn(
                  duration: 1.seconds, // Fade-in duration
                  delay: const Duration(milliseconds: 1300),
                )
                .slide(
                    begin: const Offset(0, 1), // Slide from bottom to top
                    end: const Offset(0, 0), // End at the original position
                    duration: 1.seconds,
                    curve: Curves.easeOut,
                    delay: const Duration(milliseconds: 1300)),
            const Spacer(),
            InkWell(
              onTap: () {
                locator<NavigationService>().scrolleTo(
                  locator<NavigationService>().aboutPageKey,
                );
              },
              child: Image.asset(
                "assets/gifs/scroll_circular.gif",
                height: Const(context).getHeight() / 12,
                color: Colors.orange,
              ),
            ),
            SizedBox(
              height: Const(context).getHeight() / 40,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeMobileView extends StatelessWidget {
  const HomeMobileView({super.key});
  final String _split = "split ";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Const(context).getHeight(),
      width: Const(context).getWidth(),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(80, 80),
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/coding_person.jpg"),
            opacity: 0.1,
            fit: BoxFit.cover,
          ),
        ),
        margin: EdgeInsets.only(bottom: Const(context).getHeight() / 15),
        padding: EdgeInsets.symmetric(
          horizontal: Const(context).getWidth() / 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(Const(context).getHeight() / 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/app_archer_icon.png',
                    height: Const(context).getHeight() / 26,
                  ),
                  const Text(
                    " App Archer",
                    style: TextStyle(
                      fontFamily: "earthorbiterbold",
                      fontSize: 24,
                      // color: locator<NavigationService>().selectedIndex.isEven
                      //     ? Colors.black
                      //     : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: "Holla!, I’m Parth Pandya and I’m a"
                  .split("split")
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                String letter = entry.value;
                return Text(
                  letter,
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.labelSmall!.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                  ),
                )
                    .animate(
                      delay: (index * 200)
                          .ms, // Delay each character animation by index
                    )
                    .fadeIn(duration: 0.6.seconds) // Fade in each letter
                    .slide(
                      begin: const Offset(0, 0.3), // Start from below (bottom)
                      end: const Offset(0, 0), // End at its original position
                      duration: 0.6.seconds,
                      curve: Curves.easeOut,
                    );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: "Flutter${_split}Application${_split}Developer"
                  .split("split")
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                String letter = entry.value;
                return Text(
                  letter,
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                )
                    .animate(
                      delay: (index * 200)
                          .ms, // Delay each character animation by index
                    )
                    .fadeIn(duration: 0.6.seconds) // Fade in each letter
                    .slide(
                      begin: const Offset(0, 0.3), // Start from below (bottom)
                      end: const Offset(0, 0), // End at its original position
                      duration: 0.6.seconds,
                      curve: Curves.easeOut,
                    );
              }).toList(),
            ),
            SizedBox(
              height: Const(context).getHeight() / 18,
            ),
            Text(
              "I’m the Da Vinci of Flutter, blending art and logic into digital masterpieces.Turning code into creations that are not just functional but truly inspirational. Because every app should be as intuitive as it is beautiful.",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
              ),
              textAlign: TextAlign.start,
            )
                .animate()
                .fadeIn(
                  duration: 1.seconds, // Fade-in duration
                  delay: const Duration(milliseconds: 670),
                )
                .slide(
                  begin: const Offset(0, 1), // Slide from bottom to top
                  end: const Offset(0, 0), // End at the original position
                  duration: 1.seconds,
                  curve: Curves.easeOut,
                  delay: const Duration(milliseconds: 670),
                ),
            const Spacer(),
            SizedBox(
              width: Const(context).getWidth() / 2.8,
              child: PushableButton(
                height: Const(context).getHeight() / 22,
                elevation: 8,
                color: Colors.orange,
                bottomColor: Colors.black,
                shadow: BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2),
                ),
                onPressed: () => Const.getGetInTouchOrContactMe(),
                child: const Text(
                  'Get In Touch',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
                .animate()
                .fadeIn(
                  duration: 1.seconds, // Fade-in duration
                  delay: const Duration(milliseconds: 1300),
                )
                .slide(
                  begin: const Offset(0, 1), // Slide from bottom to top
                  end: const Offset(0, 0), // End at the original position
                  duration: 1.seconds,
                  curve: Curves.easeOut,
                  delay: const Duration(milliseconds: 1300),
                ),
            SizedBox(
              height: Const(context).getHeight() / 30,
            ),
            SizedBox(
              width: Const(context).getWidth() / 3.2,
              child: PushableButton(
                height: Const(context).getHeight() / 22,
                elevation: 8,
                color: Colors.white,
                bottomColor: Colors.black,
                shadow: BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2),
                ),
                onPressed: () => Const.getResume(),
                child: const Text(
                  'Resume',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
                .animate()
                .fadeIn(
                  duration: 1.seconds, // Fade-in duration
                  delay: const Duration(milliseconds: 1300),
                )
                .slide(
                  begin: const Offset(0, 1), // Slide from bottom to top
                  end: const Offset(0, 0), // End at the original position
                  duration: 1.seconds,
                  curve: Curves.easeOut,
                  delay: const Duration(milliseconds: 1350),
                ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.grey.shade500,
                        // color: Colors.green,
                        size: 30,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://wa.me/+971523916556"]);
                      },
                    )),
                SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.grey.shade500,
                        size: 30,
                      ),
                      onPressed: () {
                        js.context.callMethod("open",
                            ["https://www.linkedin.com/in/parthpandya1510/"]);
                      },
                    )),
                SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.grey.shade500,
                        size: 30,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://github.com/parth111pandya"]);
                      },
                    )),
                SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.at,
                        color: Colors.grey.shade500,
                        size: 30,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["mailto:parthpandya1510@gmail.com"]);
                      },
                    )),
                SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.grey.shade500,
                        size: 30,
                      ),
                      onPressed: () {
                        js.context.callMethod("open", [
                          "https://www.instagram.com/parthu.___/?igsh=MWZ1Zm43YjI3ZGdraw%3D%3D&utm_source=qr"
                        ]);
                      },
                    )),
              ],
            )
                .animate()
                .fadeIn(
                  duration: 1.seconds, // Fade-in duration
                  delay: const Duration(milliseconds: 1350),
                )
                .slide(
                  begin: const Offset(0, 1), // Slide from bottom to top
                  end: const Offset(0, 0), // End at the original position
                  duration: 1.seconds,
                  curve: Curves.easeOut,
                  delay: const Duration(milliseconds: 1400),
                ),
            const Spacer(
              flex: 2,
            ),
            InkWell(
              onTap: () {
                locator<NavigationService>().scrolleTo(
                  locator<NavigationService>().aboutPageKey,
                );
              },
              child: Image.asset(
                "assets/gifs/scroll_circular.gif",
                height: Const(context).getHeight() / 12,
                color: Colors.orange,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeTabView extends StatelessWidget {
  const HomeTabView({super.key});

  final String _split = "split ";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Const(context).getHeight(),
      width: Const(context).getWidth(),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: Const(context).commonCurve(),
          image: const DecorationImage(
            image: AssetImage("assets/images/coding_person.jpg"),
            opacity: 0.1,
            fit: BoxFit.cover,
          ),
        ),
        margin: EdgeInsets.only(bottom: Const(context).commonBottomSpace()),
        padding: EdgeInsets.symmetric(
          horizontal: Const(context).getWidth() / 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(Const(context).getHeight() / 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/app_archer_icon.png',
                    height: Const(context).getHeight() / 15,
                  ),
                  Text(
                    "App Archer",
                    style: TextStyle(
                      fontFamily: "earthorbiterbold",
                      fontSize:
                          Theme.of(context).textTheme.titleLarge!.fontSize,
                      // color: locator<NavigationService>().selectedIndex.isEven
                      //     ? Colors.black
                      //     : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: "Holla!, I’m Parth Pandya and I’m a"
                  .split("split")
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                String letter = entry.value;
                return Text(
                  letter,
                  style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.displayMedium!.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                  ),
                )
                    .animate(
                      delay: (index * 200)
                          .ms, // Delay each character animation by index
                    )
                    .fadeIn(duration: 0.6.seconds) // Fade in each letter
                    .slide(
                      begin: const Offset(0, 0.3), // Start from below (bottom)
                      end: const Offset(0, 0), // End at its original position
                      duration: 0.6.seconds,
                      curve: Curves.easeOut,
                    );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: "Mobile${_split}Application${_split}Developer"
                  .split("split")
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                String letter = entry.value;
                return Text(
                  letter,
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                )
                    .animate(
                      delay: (index * 200)
                          .ms, // Delay each character animation by index
                    )
                    .fadeIn(duration: 0.6.seconds) // Fade in each letter
                    .slide(
                      begin: const Offset(0, 0.3), // Start from below (bottom)
                      end: const Offset(0, 0), // End at its original position
                      duration: 0.6.seconds,
                      curve: Curves.easeOut,
                    );
              }).toList(),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              "I’m the Da Vinci of Flutter, blending art and logic into digital masterpieces.Turning code into creations that are not just functional but truly inspirational. Because every app should be as intuitive as it is beautiful.",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            )
                .animate()
                .fadeIn(
                  duration: 1.seconds, // Fade-in duration
                  delay: const Duration(milliseconds: 670),
                )
                .slide(
                  begin: const Offset(0, 1), // Slide from bottom to top
                  end: const Offset(0, 0), // End at the original position
                  duration: 1.seconds,
                  curve: Curves.easeOut,
                  delay: const Duration(milliseconds: 670),
                ),
            const Spacer(
              flex: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Const(context).getWidth() / 4,
                      child: PushableButton(
                        height: Const(context).getHeight() / 22,
                        elevation: 8,
                        color: Colors.orange,
                        bottomColor: Colors.black,
                        shadow: BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 2),
                        ),
                        onPressed: () => Const.getGetInTouchOrContactMe(),
                        child: const Text(
                          'Get In Touch',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                        .animate()
                        .fadeIn(
                          duration: 1.seconds, // Fade-in duration
                          delay: const Duration(milliseconds: 1300),
                        )
                        .slide(
                          begin: const Offset(0, 1), // Slide from bottom to top
                          end: const Offset(
                              0, 0), // End at the original position
                          duration: 1.seconds,
                          curve: Curves.easeOut,
                          delay: const Duration(milliseconds: 1300),
                        ),
                    SizedBox(
                      width: Const(context).getWidth() / 20,
                    ),
                    SizedBox(
                      width: Const(context).getWidth() / 5,
                      child: PushableButton(
                        height: Const(context).getHeight() / 22,
                        elevation: 8,
                        color: Colors.white,
                        bottomColor: Colors.black,
                        shadow: BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 2),
                        ),
                        onPressed: () => Const.getResume(),
                        child: const Text(
                          'Resume',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: Const(context).getHeight() / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.grey.shade500,
                            // color: Colors.green,
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod(
                                "open", ["https://wa.me/+971523916556"]);
                          },
                        )),
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.grey.shade500,
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod("open", [
                              "https://www.linkedin.com/in/parthpandya1510/"
                            ]);
                          },
                        )),
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.grey.shade500,
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod(
                                "open", ["https://github.com/parth111pandya"]);
                          },
                        )),
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.at,
                            color: Colors.grey.shade500,
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod(
                                "open", ["mailto:parthpandya1510@gmail.com"]);
                          },
                        )),
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.grey.shade500,
                            size: 40,
                          ),
                          onPressed: () {
                            js.context.callMethod("open", [
                              "https://www.instagram.com/parthu.___/?igsh=MWZ1Zm43YjI3ZGdraw%3D%3D&utm_source=qr"
                            ]);
                          },
                        )),
                  ],
                ),
              ],
            )
                .animate()
                .fadeIn(
                  duration: 1.seconds, // Fade-in duration
                  delay: const Duration(milliseconds: 1300),
                )
                .slide(
                    begin: const Offset(0, 1), // Slide from bottom to top
                    end: const Offset(0, 0), // End at the original position
                    duration: 1.seconds,
                    curve: Curves.easeOut,
                    delay: const Duration(milliseconds: 1300)),
            const Spacer(
              flex: 2,
            ),
            InkWell(
              onTap: () {
                locator<NavigationService>().scrolleTo(
                  locator<NavigationService>().aboutPageKey,
                );
              },
              child: Image.asset(
                "assets/gifs/scroll_circular.gif",
                height: Const(context).getHeight() / 12,
                color: Colors.orange,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
