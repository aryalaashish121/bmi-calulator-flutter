import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  const ReuseableCard({super.key, required this.color, this.cardChild, this.onTapAction});
  final Color color;
  final Widget? cardChild;
  final Function? onTapAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (onTapAction != null) {
            onTapAction!(); // Ensure the function is invoked properly.
          }
        },
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,

      ),
    );
  }
}


enum Gender  { male, female }