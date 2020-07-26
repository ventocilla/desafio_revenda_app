import 'package:flutter/material.dart';
import 'step_circle.dart';
import 'last_step_circle.dart';

class StepsPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          StepCircle(
            title: 'Comprar',
            innerColor: Colors.blue,
            borderColor: Colors.grey[300],
            borderWidth: 10,
          ),
          StepCircle(title: 'Pagamento'),
          LastStepCircle(title: 'Confirmação'),
        ],
      ),
    );
  }
}