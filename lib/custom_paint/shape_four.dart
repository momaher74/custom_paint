import 'package:flutter/material.dart';

class ShapeFour extends StatelessWidget {
  const ShapeFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: const Color(0xff264ECA),
      child: CustomPaint(
        painter: ShapeFourPainter(),
      ),
    );
  }
}

class ShapeFourPainter extends CustomPainter {
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
    paint2.color = Colors.indigoAccent;
    paint.color = Colors.indigoAccent;
    path.moveTo(w*.25, 0);
    path.quadraticBezierTo(w*.25, 0, w*.3, h*.1);
    path.quadraticBezierTo(w*.35, h*.18, w*.4  , h*.2);
    path.quadraticBezierTo(w*.4, h*.21, w*.75  , h*.3);
    path.quadraticBezierTo(w*.9, h*.38, w*.65,h*.7 );
    path.quadraticBezierTo(w*.55, h*.85, w,h );
    path.lineTo(w, 0);
    path.lineTo(0, 0);
    path.lineTo(w*.2, 0);



    canvas.drawPath(path, paint);
    canvas.drawPath(path, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
