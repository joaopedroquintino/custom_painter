import 'package:flutter/material.dart';

class StrangePainter extends CustomPainter {
  final Paint _paint;

  StrangePainter() : _paint = Paint()..style = PaintingStyle.fill;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
      Path()
        ..moveTo(0, 3 * size.height / 4)
        ..arcToPoint(
          Offset(0, size.height / 4),
          radius: Radius.elliptical(1, 2),
          clockwise: false,
        )
        ..lineTo(size.width, size.height / 4)
        ..arcToPoint(
          Offset(size.width, 3 * size.height / 4),
          radius: Radius.elliptical(1, 2),
        )
        ..close(),
      _paint,
    );
  }
}
