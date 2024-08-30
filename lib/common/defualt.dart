import 'package:flutter/material.dart';
import 'package:portfolio/utils/const.dart';

class CustomContainer extends StatelessWidget {
  final String pageName;
  const CustomContainer({
    super.key,
    required this.pageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Const(context).getWidth(),
      height: Const(context).getHeight(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.black,
      ),
      child: Center(
        child: Text(
          pageName,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
