import 'package:flutter/material.dart';
import 'package:movie_tickets/view/seat_booking/widgets/chair_painter.dart';

class SeatsRow extends StatelessWidget {
  const SeatsRow(
      {super.key,
      required this.freeSeats,
      required this.rowSeats,
      required this.numSeats});

  final int numSeats;
  final List<int> freeSeats;
  final String rowSeats;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(numSeats, (index) {
          if (freeSeats.contains(index + 1)) {
            return const InkWell(
              child: PaintChair(
              
              ),
            );
          }
          return const PaintChair();
        }),
      ),
    );
  }
}
