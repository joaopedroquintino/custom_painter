import 'package:flutter/material.dart';

class ChatPainter extends CustomPainter {
  final Paint _paint;

  ChatPainter() : _paint = Paint()..style = PaintingStyle.stroke;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
        Path()
          ..moveTo(0, 0)
          ..lineTo(0, size.height - 10)
          ..arcToPoint(
            Offset(
              10,
              size.height,
            ),
            radius: Radius.circular(10),
            clockwise: false,
          )
          ..lineTo(size.width - 10, size.height)
          ..arcToPoint(
            Offset(size.width, size.height - 10),
            radius: Radius.circular(10),
            clockwise: false,
          )
          ..lineTo(size.width, 15)
          ..arcToPoint(
            Offset(size.width - 10, 5),
            radius: Radius.circular(10),
            clockwise: false,
          )
          ..lineTo(10, 5)
          ..quadraticBezierTo(2, 5, 0, 0),
        _paint);
  }
}
