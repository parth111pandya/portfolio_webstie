import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/layout_builder.dart';
import 'package:portfolio/utils/const.dart';
import 'dart:js' as js;

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
    return Container(
      margin: EdgeInsets.only(bottom: Const(context).commonBottomSpace()),
      padding: EdgeInsets.symmetric(
        vertical: Const(context).getHeight() / 30,
        horizontal: Const(context).getWidth() / 30,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.elliptical(80, 80),
        ),
        border: Border.all(
          color: Colors.white,
        ),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Contact Me",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", ["tel:+971523916556"]);
                  },
                  child: const Row(
                    children: [
                      Text(
                        '📞',
                        style: TextStyle(color: Colors.grey, fontSize: 28),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+971 523916556',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 28,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", ["tel:+918160889630"]);
                  },
                  child: const Row(
                    children: [
                      Text(
                        '📞',
                        style: TextStyle(color: Colors.grey, fontSize: 28),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+91 8160889630',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 28,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod(
                        "open", ["mailto:parthpandya1510@gmail.com"]);
                  },
                  child: const Row(
                    children: [
                      Text(
                        '✉️',
                        style: TextStyle(color: Colors.grey, fontSize: 28),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'parthpandya1510@gmail.com',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 28,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: IconButton(
                          icon: const Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.green,
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
                          icon: const Icon(
                            FontAwesomeIcons.linkedin,
                            color: Color.fromRGBO(40, 103, 178, 1),
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
                          icon: const Icon(
                            FontAwesomeIcons.github,
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
                          icon: const Icon(
                            FontAwesomeIcons.at,
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
                          icon: const Icon(
                            FontAwesomeIcons.instagram,
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
            ),
          ),
          const CircleAvatar(
            radius: 130,
            backgroundImage: AssetImage(
              "assets/images/my_image.jpg",
            ),
          ),
        ],
      ),
    );
  }
}

class ContactPageMobileView extends StatelessWidget {
  const ContactPageMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Const(context).commonBottomSpace()),
      padding: EdgeInsets.symmetric(
        vertical: Const(context).getHeight() / 30,
        horizontal: Const(context).getWidth() / 30,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.elliptical(80, 80),
        ),
        border: Border.all(
          color: Colors.white,
        ),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Contact Me",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 1.0,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", ["tel:+971523916556"]);
                },
                child: Row(
                  children: [
                    const Text(
                      '📞',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+971 523916556',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize:
                              Theme.of(context).textTheme.titleSmall!.fontSize,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", ["tel:+918160889630"]);
                },
                child: Row(
                  children: [
                    const Text(
                      '📞',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+91 8160889630',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize:
                              Theme.of(context).textTheme.titleSmall!.fontSize,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  js.context
                      .callMethod("open", ["mailto:parthpandya1510@gmail.com"]);
                },
                child: Row(
                  children: [
                    const Text(
                      '✉️',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'parthpandya1510@gmail.com',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize:
                              Theme.of(context).textTheme.titleSmall!.fontSize,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                      size: 35,
                    ),
                    onPressed: () {
                      js.context
                          .callMethod("open", ["https://wa.me/+971523916556"]);
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.linkedin,
                      color: Color.fromRGBO(40, 103, 178, 1),
                      size: 35,
                    ),
                    onPressed: () {
                      js.context.callMethod("open",
                          ["https://www.linkedin.com/in/parthpandya1510/"]);
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.github,
                      size: 35,
                    ),
                    onPressed: () {
                      js.context.callMethod(
                          "open", ["https://github.com/parth111pandya"]);
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.at,
                      size: 35,
                    ),
                    onPressed: () {
                      js.context.callMethod(
                          "open", ["mailto:parthpandya1510@gmail.com"]);
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.instagram,
                      size: 35,
                    ),
                    onPressed: () {
                      js.context.callMethod("open", [
                        "https://www.instagram.com/parthu.___/?igsh=MWZ1Zm43YjI3ZGdraw%3D%3D&utm_source=qr"
                      ]);
                    },
                  ),
                ],
              ),
            ],
          ),
          const Positioned(
            right: 18,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                "assets/images/my_image.jpg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactPageTabView extends StatelessWidget {
  const ContactPageTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Const(context).commonBottomSpace()),
      padding: EdgeInsets.symmetric(
        vertical: Const(context).getHeight() / 30,
        horizontal: Const(context).getWidth() / 30,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.elliptical(80, 80),
        ),
        border: Border.all(
          color: Colors.white,
        ),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Contact Me",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 1.0,
                  fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", ["tel:+971523916556"]);
                },
                child: Row(
                  children: [
                    const Text(
                      '📞',
                      style: TextStyle(color: Colors.grey, fontSize: 26),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+971 523916556',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .fontSize,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", ["tel:+918160889630"]);
                },
                child: Row(
                  children: [
                    const Text(
                      '📞',
                      style: TextStyle(color: Colors.grey, fontSize: 26),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+91 8160889630',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .fontSize,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  js.context
                      .callMethod("open", ["mailto:parthpandya1510@gmail.com"]);
                },
                child: Row(
                  children: [
                    const Text(
                      '✉️',
                      style: TextStyle(color: Colors.grey, fontSize: 26),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'parthpandya1510@gmail.com',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .fontSize,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                      size: 40,
                    ),
                    onPressed: () {
                      js.context
                          .callMethod("open", ["https://wa.me/+971523916556"]);
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.linkedin,
                      color: Color.fromRGBO(40, 103, 178, 1),
                      size: 40,
                    ),
                    onPressed: () {
                      js.context.callMethod("open",
                          ["https://www.linkedin.com/in/parthpandya1510/"]);
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.github,
                      size: 40,
                    ),
                    onPressed: () {
                      js.context.callMethod(
                          "open", ["https://github.com/parth111pandya"]);
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.at,
                      size: 40,
                    ),
                    onPressed: () {
                      js.context.callMethod(
                          "open", ["mailto:parthpandya1510@gmail.com"]);
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.instagram,
                      size: 40,
                    ),
                    onPressed: () {
                      js.context.callMethod("open", [
                        "https://www.instagram.com/parthu.___/?igsh=MWZ1Zm43YjI3ZGdraw%3D%3D&utm_source=qr"
                      ]);
                    },
                  ),
                ],
              ),
            ],
          ),
          const Positioned(
            right: 18,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                "assets/images/my_image.jpg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
