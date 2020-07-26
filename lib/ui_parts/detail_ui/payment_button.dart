import 'package:desafio_revenda_app/themes/stylesRevenda.dart';
import 'package:flutter/material.dart';

class PaymentButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.orangeAccent,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [Colors.blue[200], Colors.blue[700]],
        ),
      ),
      margin: EdgeInsets.only(bottom: 20),
      child: Center(
        child: Text(
          'IR PARA O PAGAMENTO',
          style: StylesRevenda.paymentDetailStyle,
        ),
      ),
      //child: Container(),
    );
  }
}
