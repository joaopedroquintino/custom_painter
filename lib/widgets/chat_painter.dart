import 'package:flutter/material.dart';

class ChatPainter extends CustomPainter {
  final Paint _paint;
  ChatPainter()
      : _paint = Paint()
          ..style = PaintingStyle.fill
          ..color = Colors.lightGreen[500];
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
        Path()
          ..moveTo(0, 0)
          ..lineTo(5, 5)
          ..lineTo(5, size.height - 5)
          ..arcToPoint(
            Offset(
              10,
              size.height,
            ),
            radius: Radius.circular(5),
            clockwise: false,
          )
          ..lineTo(size.width - 5, size.height)
          ..arcToPoint(
            Offset(size.width, size.height - 5),
            radius: Radius.circular(5),
            clockwise: false,
          )
          ..lineTo(size.width, 5)
          ..arcToPoint(
            Offset(size.width - 5, 0),
            radius: Radius.circular(5),
            clockwise: false,
          )
          ..lineTo(0, 0),
        _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
