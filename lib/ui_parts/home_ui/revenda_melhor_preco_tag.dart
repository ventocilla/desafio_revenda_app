import 'package:desafio_revenda_app/themes/stylesRevenda.dart';
import 'package:flutter/material.dart';

class RevendaMelhorPrecoTag extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.0),
          bottomLeft: Radius.circular(5.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.label,
            color: Colors.white,
            size: 19,
          ),
          Text(
            'Best Price',
              style: StylesRevenda.priceTagStyle
          ),
        ],
      ),
    );
  }
}
