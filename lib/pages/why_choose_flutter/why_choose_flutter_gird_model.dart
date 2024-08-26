class GridModel {
  final String icon;
  final String title;
  final String deception;
  GridModel({
    required this.icon,
    required this.title,
    required this.deception,
  });
}

List<GridModel> gridList = [
  GridModel(
    icon: "assets/images/code.png",
    title: "A single Codebase to Maintain",
    deception:
        "Manage less and deliver more with a single codebase that powers all your platforms.",
  ),
  GridModel(
    icon: "assets/images/expand.png",
    title: "Compatible With All Screen Sizes",
    deception:
        "Seamlessly fits any screen size for a consistent user experience across devices.",
  ),
  GridModel(
    icon: "assets/images/grid.png",
    title: "Flexible Layout System",
    deception:
        "Effortlessly adapts to any design with a layout system built for flexibility.",
  ),
  // GridModel(
  //   icon: "assets/images/refresh.png",
  //   title: "Hot Reloading Feature",
  //   deception:
  //       "See instant results as you code with Flutter’s powerful hot reloading feature.",
  // ),
  GridModel(
    icon: "assets/images/key.png",
    title: "Access to Original Source Code",
    deception:
        "Full access to the original source code for complete control and customization.",
  ),
  GridModel(
    icon: "assets/images/stopwatch.png",
    title: "Faster Time to Market",
    deception:
        "Accelerate your launch with faster development and reduced time to market.",
  ),
  GridModel(
    icon: "assets/images/software-engineer.png",
    title: "High-Performance Rendering Engine",
    deception:
        "Deliver smooth, stunning visuals with a high-performance rendering engine built for speed.",
  ),
];
