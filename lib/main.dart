import 'package:flutter/material.dart';

import 'widgets/painters.dart';

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
                painter: FacePainter(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
