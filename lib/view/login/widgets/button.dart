import 'package:flutter/material.dart';
import '../../../constants/styles.dart';

class OnTapButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const OnTapButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: yColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: onTap,
            child: btext(text)),
      ),
    );
  }
}
