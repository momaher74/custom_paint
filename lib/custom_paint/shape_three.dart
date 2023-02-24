import 'package:flutter/material.dart';

class ShapeThree extends StatelessWidget {
  const ShapeThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height,
      child: CustomPaint(
        painter: ShapeThreePainter(),
      ),
    );
  }
}

class ShapeThreePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double w = size.width;
    final double h = size.height;
    final paint = Paint();
    final paint2 = Paint();
    final path = Path();
    paint.style = PaintingStyle.fill;
    paint2.style = PaintingStyle.stroke;
    paint2.strokeWidth = 4;
    paint2.color = Colors.red;
    paint.color = Colors.red;
    path.moveTo(0, h / 3);
    path.quadraticBezierTo(w * .2, h * .32, w * .4, h * .22);
    path.quadraticBezierTo(w * .55, h * .15, w * .77, h * .25);
    path.quadraticBezierTo(w * .85, h * .28, w, h / 3.3);
    path.lineTo(w, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
    canvas.drawPath(path, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
