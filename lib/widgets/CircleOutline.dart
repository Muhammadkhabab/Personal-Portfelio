
import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils/colors.dart';

class CircleOutline extends CustomPainter{
  double radius;
  CircleOutline({required this.radius});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color=colors.getBorderColor()..strokeWidth=1..style=PaintingStyle.stroke;
    canvas.drawCircle(Offset(0,0), radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}