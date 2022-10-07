
import 'package:flutter/material.dart';
import 'package:movie_tickets/constants/styles.dart';

class ItemsDescription extends StatelessWidget {
  const ItemsDescription({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const Icon(Icons.circle, color: Colors.white, size: 10),
              const SizedBox(width: 10.0),
              btext('Free')
            ],
          ),
          Row(
            children: [
              const Icon(Icons.circle, color: Color(0xff4A5660), size: 10),
              const SizedBox(width: 10.0),
              btext('Reserved')
            ],
          ),
          Row(
            children: [
              const Icon(Icons.circle, color: yColor, size: 10),
              const SizedBox(width: 10.0),
              btext( 'Selected')
            ],
          ),
        ],
      ),
    );
  }
}
