import 'package:flutter/material.dart';

class LastStepCircle extends StatelessWidget {
  LastStepCircle({
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
      children: <Widget>[
        Row(
          children: <Widget>[
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
            SizedBox(width: 15),
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
