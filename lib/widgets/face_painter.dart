import 'package:flutter/material.dart';

class FacePainter extends CustomPainter {
  final Paint _paint;

  FacePainter() : _paint = Paint()..style = PaintingStyle.stroke;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  void paint(Canvas canvas, Size size) {
    canvas
      ..drawPath(
        Path()
          ..moveTo(0, size.height / 2)
          ..conicTo(
              size.width / 2, size.height, size.width, size.height / 2, 0.5)
          ..quadraticBezierTo(
              size.width / 2, size.height / 2 + 15, 0, size.height / 2),
        _paint,
      )
      ..drawCircle(Offset(size.width / 4, size.height / 4), 15, _paint)
      ..drawCircle(Offset(3 * size.width / 4, size.height / 4), 15, _paint);
  }
}
