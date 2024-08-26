import 'package:flutter/material.dart';
import 'package:portfolio/common/defualt.dart';
import 'package:portfolio/common/layout_builder.dart';
import 'package:portfolio/pages/why_choose_flutter/why_choose_flutter_gird_model.dart';
import 'package:portfolio/utils/const.dart';

class WhyChooseFlutterDeveloperPage extends StatelessWidget {
  const WhyChooseFlutterDeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      desktop: WhyChooseFlutterDeveloperDesktopView(),
      mobile: WhyChooseFlutterDeveloperMobileView(),
      tablet: WhyChooseFlutterDeveloperTabView(),
    );
  }
}

class WhyChooseFlutterDeveloperDesktopView extends StatelessWidget {
  const WhyChooseFlutterDeveloperDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Const(context).width(),
      height: Const(context).height(),
      color: Colors.black,
      child: Container(
        margin: EdgeInsets.only(bottom: Const(context).height() / 16),
        padding: EdgeInsets.only(
          left: Const(context).width() / 18,
          right: Const(context).width() / 18,
          top: Const(context).height() / 10,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(80, 80),
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Why Choose Flutter",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.titleLarge!.fontSize! - 4,
                color: Colors.black,
                fontFamily: "JetBrainsMono-Bold",
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: Const(context).width() / 3,
              child: Text(
                "Features so seamless you’ll wonder how you ever built apps without them. Seriously!",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.labelLarge!.fontSize,
                  color: Theme.of(context).textTheme.labelLarge!.color,
                  fontFamily: "JetBrainsMono-Bold",
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: Const(context).height() / 15,
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 6,
                mainAxisExtent: 220,
              ),
              itemCount: gridList.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: Const(context).width() / 20,
              ),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      gridList[index].icon,
                      height: Const(context).height() / 10,
                    ),
                    SizedBox(
                      height: Const(context).height() / 100,
                    ),
                    Text(
                      gridList[index].title,
                      style: TextStyle(
                        fontSize: Const(context).width() / 90,
                        fontFamily: "JetBrainsMono-Bold",
                      ),
                    ),
                    SizedBox(
                      height: Const(context).height() / 100,
                    ),
                    Text(
                      gridList[index].deception,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.labelLarge!.fontSize,
                        color: Theme.of(context).textTheme.labelLarge!.color,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class WhyChooseFlutterDeveloperMobileView extends StatelessWidget {
  const WhyChooseFlutterDeveloperMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "Why choose Flutter Mobile View",
    );
  }
}

class WhyChooseFlutterDeveloperTabView extends StatelessWidget {
  const WhyChooseFlutterDeveloperTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      pageName: "Why choose Flutter Tab View",
    );
  }
}
