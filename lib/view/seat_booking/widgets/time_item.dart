import 'package:flutter/material.dart';
import '../../../constants/styles.dart';

class TimeItem extends StatelessWidget {
  const TimeItem({super.key, required this.time});
  final String time;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 80,
        decoration: BoxDecoration(
            border: Border.all(
              color: yColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: btext(time.toString()),
        ),
      ),
    );
  }
}
