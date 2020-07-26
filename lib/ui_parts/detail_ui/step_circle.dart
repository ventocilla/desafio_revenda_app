import 'package:flutter/material.dart';

class StepCircle extends StatelessWidget {
  StepCircle({
    this.title,
    this.innerColor = Colors.transparent,
    this.borderColor = Colors.grey,
    this.borderWidth = 2.0,
  });
  final String title;
  final Color innerColor;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 13),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: innerColor,
                border: Border.all(
                  width: borderWidth,
                  color: borderColor,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(width: 10),
            SizedBox(
              width: 80,
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(title),
        )
      ],
    );
  }
}