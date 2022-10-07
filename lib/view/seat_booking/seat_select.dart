import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_tickets/constants/styles.dart';
import 'package:movie_tickets/model/chair_model.dart';
import 'package:movie_tickets/view/login/widgets/button.dart';
import 'package:movie_tickets/view/seat_booking/widgets/date_tile.dart';
import 'package:movie_tickets/view/seat_booking/widgets/selection_category.dart';
import 'package:movie_tickets/view/seat_booking/widgets/screen_painter.dart';
import 'package:movie_tickets/view/seat_booking/widgets/seats_row.dart';
import 'package:movie_tickets/view/seat_booking/widgets/time_item.dart';
import '../../constants/sizes.dart';
import '../../model/date_time_model.dart';

class SlotBooking extends StatelessWidget {
  const SlotBooking({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(CupertinoIcons.back),
                ),
                SizedBox(
                  width: 150,
                  child: btext('Book your Slot'),
                ),
                const SizedBox()
              ],
            ),
            Container(
              height: 40,
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: CustomPaint(
                painter: Painter(),
              ),
            ),
            Center(child: btext('Screen')),
            SizedBox(
              height: size.height / 2.7,
              width: size.width,
              child: Column(
                  children: List.generate(
                      ChairModel.listChairs.length,
                      (index) => SeatsRow(
                          freeSeats: ChairModel.listChairs[index].freeSeats,
                          rowSeats: ChairModel.listChairs[index].rowSeats,
                          numSeats: ChairModel.listChairs[index].seats))),
            ),
            ItemsDescription(size: size),
            h10,
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              height: 90,
              width: size.width,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: DateTimeModel.listDate.length,
                itemBuilder: (context, index) =>
                    DateItem(date: DateTimeModel.listDate[index]),
              ),
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: TimeItem(time: DateTimeModel.timimgs[index]),
                  );
                },
              ),
            ),
            OnTapButton(text: "Buy Ticket \$ 55.0", onTap: () {})
          ],
        ),
      ),
    );
  }
}
