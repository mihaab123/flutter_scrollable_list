import 'package:flutter/material.dart';
import 'package:flutter_scrollable_list/constants/themes.dart';

class CircleLinePainter extends CustomPainter {
  CircleLinePainter();

  @override
  void paint(Canvas canvas, Size size) async {
    const center = Offset(-40, 0);
    const radius = 24.0;
    Paint paintCircle = Paint()..color = AppThemes().colorGrey;
    Paint paintLine = Paint()
      ..color = AppThemes().colorBlack
      ..strokeWidth = 2;
    canvas.drawLine(const Offset(-70, -25), const Offset(-10, 25), paintLine);
    canvas.drawCircle(center, radius, paintCircle);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
