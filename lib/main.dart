import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Painter',
      home: HomeCustomPainter(),
    );
  }
}

class HomeCustomPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Wrap(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30),
              child: CustomPaint(
                painter: CirclePainter(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: CustomPaint(
                painter: CircleFilledPainter(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: CustomPaint(
                size: Size(40, 40),
                painter: TrianglePainter(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: CustomPaint(
                size: Size(40, 40),
                painter: StrangePainter(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: CustomPaint(
                size: Size(120, 30),
                painter: ChatPainter(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: CustomPaint(
                size: Size(120, 120),
                painter: SinPainter(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

class SinPainter extends CustomPainter {
  final Paint _paint;

  SinPainter() : _paint = Paint()..style = PaintingStyle.stroke;

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
