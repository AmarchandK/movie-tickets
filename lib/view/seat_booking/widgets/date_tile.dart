import 'package:flutter/material.dart';

import '../../../constants/styles.dart';
import '../../../model/date_time_model.dart';

class DateItem extends StatelessWidget {
  const DateItem({super.key, required this.date});
  final DateTimeModel date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          height: 50,
          width: 70,
          decoration: BoxDecoration(
              color: yColor, borderRadius: BorderRadius.circular(5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.circle, color: Colors.black, size: 12),
              const SizedBox(height: 10.0),
              TextFrave(text: date.day, color: Colors.white, fontSize: 17),
              const SizedBox(height: 5.0),
              TextFrave(text: date.number, color: Colors.white, fontSize: 30),
            ],
          ),
        ),
      ),
    );
  }
}
