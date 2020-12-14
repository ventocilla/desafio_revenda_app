import 'package:desafio_revenda_app/themes/stylesRevenda.dart';
import 'package:flutter/material.dart';

class RevendaHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 84,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Butijões de 13kg em',
                style: StylesRevenda.headerProductTypeStyle,
              ),
              Text(
                'Av. Paulista, 1001',
                style: StylesRevenda.headerAddressStyle,
              ),
              Text(
                'Paulista, São Paulo, SP',
                style: StylesRevenda.headerCityStyle,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.location_on, color: Colors.blue),
              SizedBox(height: 5),
              Text(
                'CHANGE',
                style: StylesRevenda.headerLocationStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
