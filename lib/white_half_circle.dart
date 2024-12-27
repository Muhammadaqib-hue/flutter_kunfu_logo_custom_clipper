import 'package:flutter/material.dart';

class WhiteHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double radius = size.width / 2;
    path.addArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2), radius: radius),
      -3.14 / 2,
      3.14,
    );
    path.lineTo(size.width / 2, size.height / 2);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
