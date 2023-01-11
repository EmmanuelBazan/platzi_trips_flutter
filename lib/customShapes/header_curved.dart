import 'package:flutter/material.dart';

class HeaderCurved extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFF98E65E);
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, 250.0);
    path.quadraticBezierTo(size.width * 0.6, 250.0, size.width, 250.0 * 0.7);
    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, 0.0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
