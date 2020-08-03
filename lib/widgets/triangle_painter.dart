import 'package:flutter/material.dart';

class TrianglePainter extends CustomPainter {
  final Paint _paint;

  TrianglePainter() : _paint = Paint()..style = PaintingStyle.fill;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
        Path()
          ..moveTo(size.width / 2, 0)
          ..lineTo(0, size.height)
          ..lineTo(size.width, size.height)
          ..close(),
        _paint);
  }
}
