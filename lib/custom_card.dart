import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget? cardChild;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress!();
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
          boxShadow: [
            BoxShadow(color: Colors.white, blurRadius: 4.0),
          ],
        ),
      ),
    );
  }
}
