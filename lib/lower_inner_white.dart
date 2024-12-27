import 'package:flutter/material.dart';

class LowerWhiteInnerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double radius = size.width / 4;
    path.addOval(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height * 3 / 4), radius: radius),
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
