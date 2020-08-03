import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final Paint _paint;

  CirclePainter()
      : _paint = Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0, 0), 20, _paint);
  }
}

class CircleFilledPainter extends CustomPainter {
  final Paint _paint;

  CircleFilledPainter() : _paint = Paint()..style = PaintingStyle.fill;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0, 0), 20, _paint);
  }
}
