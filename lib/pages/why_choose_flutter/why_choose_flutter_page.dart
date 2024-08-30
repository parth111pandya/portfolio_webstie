import 'package:flutter/material.dart';
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
      width: Const(context).getWidth(),
      height: Const(context).getHeight(),
      color: Colors.black,
      child: Container(
        margin: EdgeInsets.only(bottom: Const(context).commonBottomSpace()),
        padding: EdgeInsets.only(
          left: Const(context).getWidth() / 18,
          right: Const(context).getWidth() / 18,
          top: Const(context).getHeight() / 10,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(80, 80),
          ),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/flutter_background.png",
            ),
            fit: BoxFit.cover,
            opacity: 0.07,
          ),
        ),
        child: Column(
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
              width: Const(context).getWidth() / 3,
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
              height: Const(context).getHeight() / 15,
            ),
            Wrap(
              direction: Axis.horizontal,
              runSpacing: 10,
              spacing: 10,
              children: gridList
                  .map(
                    (gridItem) => SizedBox(
                      width: Const(context).getWidth() / 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            gridItem.icon,
                            height: Const(context).getHeight() / 10,
                          ),
                          SizedBox(
                            height: Const(context).getHeight() / 100,
                          ),
                          Text(
                            gridItem.title,
                            style: TextStyle(
                              fontSize: Const(context).getWidth() / 90,
                              fontFamily: "JetBrainsMono-Bold",
                            ),
                          ),
                          SizedBox(
                            height: Const(context).getHeight() / 100,
                          ),
                          Text(
                            gridItem.deception,
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .fontSize,
                              color:
                                  Theme.of(context).textTheme.labelLarge!.color,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
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
    return Container(
      width: Const(context).getWidth(),
      height: Const(context).getHeight(),
      color: Colors.black,
      child: Container(
        margin: EdgeInsets.only(bottom: Const(context).commonBottomSpace()),
        padding: EdgeInsets.only(
          left: Const(context).getWidth() / 50,
          right: Const(context).getWidth() / 50,
          top: Const(context).getHeight() / 40,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(80, 80),
          ),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/backgroung_image.jpg",
            ),
            fit: BoxFit.cover,
            opacity: 0.07,
          ),
        ),
        child: Column(
          children: [
            Text(
              "Why Choose Flutter",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.titleSmall!.fontSize! - 4,
                color: Colors.black,
                fontFamily: "JetBrainsMono-Bold",
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: Const(context).getWidth(),
              child: Text(
                "Features so seamless you’ll wonder how you ever built apps without them. Seriously!",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.labelSmall!.fontSize,
                  color: Theme.of(context).textTheme.labelSmall!.color,
                  fontFamily: "JetBrainsMono-Bold",
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            SizedBox(
              height: Const(context).getHeight() / 50,
            ),
            ListView.separated(
              itemCount: gridList.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: Const(context).getWidth() / 20,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(
                    6,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      index.isEven
                          ? Image.asset(
                              gridList[index].icon,
                              height: Const(context).getHeight() / 14,
                            )
                          : Container(),
                      index.isEven
                          ? const SizedBox(
                              width: 10,
                            )
                          : Container(),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              gridList[index].title,
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .fontSize,
                                fontFamily: "JetBrainsMono-Bold",
                              ),
                            ),
                            Text(
                              gridList[index].deception,
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .fontSize,
                                color: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .color,
                              ),
                            ),
                          ],
                        ),
                      ),
                      index.isOdd
                          ? const SizedBox(
                              width: 10,
                            )
                          : Container(),
                      index.isOdd
                          ? Image.asset(
                              gridList[index].icon,
                              height: Const(context).getHeight() / 14,
                            )
                          : Container(),
                    ],
                  ),
                );
              },

              separatorBuilder: (context, index) => const Divider(),
              // here u can customize the space.
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

class WhyChooseFlutterDeveloperTabView extends StatelessWidget {
  const WhyChooseFlutterDeveloperTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Const(context).getWidth(),
      height: Const(context).getHeight(),
      color: Colors.black,
      child: Container(
        margin: EdgeInsets.only(bottom: Const(context).commonBottomSpace()),
        padding: EdgeInsets.only(
          left: Const(context).getWidth() / 40,
          right: Const(context).getWidth() / 40,
          top: Const(context).getHeight() / 30,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(80, 80),
          ),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/flutter_background.png",
            ),
            fit: BoxFit.cover,
            opacity: 0.07,
          ),
        ),
        child: Column(
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
              width: Const(context).getWidth(),
              child: Text(
                "Features so seamless you’ll wonder how you ever built apps without them. Seriously!",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.labelMedium!.fontSize,
                  color: Theme.of(context).textTheme.labelMedium!.color,
                  fontFamily: "JetBrainsMono-Bold",
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: Const(context).getHeight() / 15,
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 6,
                mainAxisExtent: Const(context).getHeight() / 3,
              ),
              itemCount: gridList.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: Const(context).getWidth() / 20,
              ),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      gridList[index].icon,
                      height: Const(context).getHeight() / 10,
                    ),
                    SizedBox(
                      height: Const(context).getHeight() / 100,
                    ),
                    Text(
                      gridList[index].title,
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: "JetBrainsMono-Bold",
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: Const(context).getHeight() / 100,
                    ),
                    Text(
                      gridList[index].deception,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.labelMedium!.fontSize,
                        color: Theme.of(context).textTheme.labelMedium!.color,
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
