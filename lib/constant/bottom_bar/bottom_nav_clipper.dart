
import 'package:flutter/material.dart';

class BottomNavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    double w = size.width;
    double h = size.height;

    path.lineTo(0, 0);

    path.lineTo(w * 0.35, 0);

    path.quadraticBezierTo(w * 0.40, 0, w * 0.40, 20);
    path.arcToPoint(
      Offset(w * 0.60, 20),
      radius: const Radius.circular(30),
      clockwise: false,
    );
    path.quadraticBezierTo(w * 0.60, 0, w * 0.65, 0);

    path.lineTo(w, 0);

    path.lineTo(w, h);

    path.lineTo(0, h);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}