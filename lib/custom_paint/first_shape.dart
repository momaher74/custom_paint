import 'package:flutter/material.dart';

class FirstShape extends StatelessWidget {
  const FirstShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height,
      child: CustomPaint(
        painter: FirstShapePainter(),
      ),
    );
  }
}

class FirstShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double w = size.width;
    final double h = size.height;
    final paint = Paint();
    final paint2 = Paint();
    final path = Path();
    paint.style = PaintingStyle.fill;
    paint2.style = PaintingStyle.stroke ;
    paint2.strokeWidth = 4;
    paint2.color = Colors.deepPurple ;
    paint.color = Colors.red;
    path.moveTo(0, h * .8);
    path.quadraticBezierTo(w*.1, h*.7, w*.35 , h*.88) ;
    path.quadraticBezierTo(w*.57, h*.98, w*.85 , h*.65) ;
    path.quadraticBezierTo(w*.95, h*.55, w , h*.65) ;
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.lineTo(0, h*.8);


    canvas.drawPath(path, paint);
    canvas.drawPath(path, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
