import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/layout_builder.dart';
import 'package:portfolio/utils/const.dart';
import 'dart:js' as js;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      height: Const(context).height(),
      width: Const(context).width(),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(100, 75),
          ),
        ),
        margin: EdgeInsets.only(bottom: Const(context).height() / 12),
        padding: EdgeInsets.symmetric(
          horizontal: Const(context).width() / 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
              height: Const(context).height() / 18,
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
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: Const(context).width() / 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 160,
                          height: 43,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
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
                            'Get In Touch',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: Const(context).width() / 50,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 101,
                          height: 43,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(),
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
                            'Resume',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
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
            SizedBox(
              height: Const(context).height() / 10,
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
      height: Const(context).height(),
      width: Const(context).width(),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(80, 80),
          ),
        ),
        margin: EdgeInsets.only(bottom: Const(context).height() / 15),
        padding: EdgeInsets.symmetric(
          horizontal: Const(context).width() / 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
              height: Const(context).height() / 18,
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
            SizedBox(
              height: Const(context).height() / 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 160,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
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
                        'Get In Touch',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                      delay: const Duration(milliseconds: 1300),
                    ),
                SizedBox(
                  height: Const(context).height() / 30,
                ),
                Stack(
                  children: [
                    Container(
                      width: 101,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(),
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
                        'Resume',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                      delay: const Duration(milliseconds: 1350),
                    ),
                SizedBox(
                  height: Const(context).height() / 20,
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
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class HomeTabView extends StatelessWidget {
  const HomeTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home Tab View"),
    );
  }
}
