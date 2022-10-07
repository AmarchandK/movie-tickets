import 'package:flutter/material.dart';
import 'package:movie_tickets/constants/styles.dart';

class PaintChair extends StatelessWidget {
  final Color color;
  const PaintChair({Key? key, this.color = yColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(right: 9.0, left: 9.0, bottom: 20.0),
      height: size / 33,
      width: size / 31,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(7.0)),
      child: CustomPaint(painter: _PainterChair()),
    );
  }
}

class _PainterChair extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;
    final path = Path();
    path.moveTo(0, size.height * .2);
    path.lineTo(size.width * .2, size.height * .25);
    path.lineTo(size.width * .2, size.height * .7);
    path.lineTo(size.width * .1, size.height);
    path.lineTo(size.width * .2, size.height * .7);
    path.lineTo(size.width * .8, size.height * .7);
    path.lineTo(size.width * .95, size.height);
    path.lineTo(size.width * .8, size.height * .7);
    path.lineTo(size.width * .8, size.height * .25);
    path.lineTo(size.width, size.height * .2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
