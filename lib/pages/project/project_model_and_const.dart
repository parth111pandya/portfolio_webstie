import 'package:flutter/material.dart';

class ProjectModel {
  final String imagePath;
  final String title;
  final String deception;
  final String? playStoreUrl;
  final String? appStoreUrl;
  final String? webUrl;
  final Color bgColor;
  final double? scale;

  bool isHover = false;

  ProjectModel(
      {required this.imagePath,
      required this.title,
      required this.deception,
      required this.appStoreUrl,
      required this.playStoreUrl,
      required this.bgColor,
      this.webUrl,
      this.scale});
}

List<ProjectModel> projectList = [
  ProjectModel(
    imagePath: "",
    title: "Flutter Foilo",
    deception:
        "Showcasing dynamic mobile app designs and development expertise. Explore my journey in crafting sleek, functional Flutter apps.",
    appStoreUrl: "",
    playStoreUrl: "",
    webUrl: "https://parth111pandya.github.io/FlutterFolio/",
    bgColor: const Color(0xFFBDD7EF),
  ),
  ProjectModel(
    imagePath: "assets/images/GNWebsoft_Logo.png",
    title: "Gnums For Staff",
    deception:
        "Streamlining staff management with an intuitive, all-in-one platform. Efficient, reliable, and designed for seamless daily operations",
    appStoreUrl: "https://apps.apple.com/in/app/gnums-for-faculty/id1639049697",
    playStoreUrl:
        "https://play.google.com/store/apps/details?id=com.gnums.staff.gnums_staff&gl=US",
    bgColor: const Color(0xFF90BBE4),
  ),
  ProjectModel(
    imagePath: "assets/images/GNWebsoft_Logo.png",
    title: "Gnums For Student",
    deception:
        "Connecting students and parents through a user-friendly, integrated platform. Simplifying communication, assignments, and progress tracking in one seamless app",
    appStoreUrl:
        "https://apps.apple.com/in/app/gnums-for-students-parents/id1621826146",
    playStoreUrl:
        "https://play.google.com/store/apps/details?id=com.gnums.gnums",
    bgColor: const Color(0xFF90BBE4),
  ),
  ProjectModel(
    imagePath: "assets/images/GNWebsoft_Logo.png",
    title: "Gnums For Management",
    deception:
        "Optimizing management processes with a robust, easy-to-use platform. Empowering decision-makers with real-time data and efficient task management.",
    appStoreUrl:
        "https://apps.apple.com/in/app/gnums-for-management/id6468560554",
    playStoreUrl:
        "https://play.google.com/store/apps/details?id=com.gnums.management.gnums_management",
    bgColor: const Color(0xFF90BBE4),
  ),
  ProjectModel(
    imagePath: "assets/images/appIcon.png",
    title: "Rapid IncomeTax Calculator",
    deception:
        "Calculate income tax accurately, view tax slabs, and access FAQs—all in one streamlined app.",
    appStoreUrl: "",
    playStoreUrl:
        "https://play.google.com/store/apps/details?id=com.rapidincometax.calculator",
    scale: 8,
    bgColor: const Color(0xFFFDF0B0),
  ),
  ProjectModel(
    imagePath: "assets/images/agri.png",
    title: "Agri Energy",
    deception:
        "Manage energy leases, rent adjustments, and payments with ease. Track terms, submit support tickets, and stay updated—all in one app.",
    appStoreUrl: "",
    playStoreUrl: "",
    scale: 3,
    bgColor: const Color(0xFFC4B597),
  ),
  ProjectModel(
    imagePath: "assets/images/pmp.png",
    title: "PMP Transport",
    deception:
        "Streamline gas bill submissions with location-linked accuracy. Ensuring quick reimbursements and precise tracking for every trip.",
    appStoreUrl: "",
    playStoreUrl:
        "https://play.google.com/store/apps/details?id=com.developer.deck.pmp_camera",
    bgColor: const Color(0XFFFCC9C5),
  ),
];
