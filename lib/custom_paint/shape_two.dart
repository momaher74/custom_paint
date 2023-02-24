import 'package:flutter/material.dart';

class ShapeTwo extends StatelessWidget {
  const ShapeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height,
      child: CustomPaint(
        painter: ShapeTwoPainter(),
      ),
    );
  }
}

class ShapeTwoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double w = size.width;
    final double h = size.height;
    final paint = Paint();
    final path = Path();
    paint.style = PaintingStyle.fill ;
    paint.color = Colors.deepPurple ;
    paint.strokeWidth = 5 ;
    path.moveTo(0, h/3) ;
    path.lineTo(w*.37, h/3) ;
    path.quadraticBezierTo(w*.38  , h/3, w*.44, h*.33);
    path.quadraticBezierTo( w*.5,h*.24 , w*.6 , h/3);
   path.lineTo(w, h/3);
   path.lineTo(w, 0) ;
   path.lineTo(0, 0) ;
   path.close() ;


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
