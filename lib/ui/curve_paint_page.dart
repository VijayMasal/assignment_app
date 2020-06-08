import 'package:flutter/cupertino.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color.fromRGBO(248, 249, 250, 1.0);
    paint.style = PaintingStyle.fill;
    var path = Path();
    // path.moveTo(0, size.height * 0.9167);
    path.moveTo(0, size.height * 0.09 );
    path.quadraticBezierTo(size.width * 0.0001, size.height * 0.002 ,
        size.width , size.height * 0.3);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}