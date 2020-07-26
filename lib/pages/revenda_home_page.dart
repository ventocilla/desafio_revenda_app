import 'dart:convert';

import '../ui_parts/home_ui/revenda_home_header.dart';
import '../ui_parts/home_ui/revenda_home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RevendaHomePage extends StatefulWidget {
  @override
  _RevendaHomePageState createState() => _RevendaHomePageState();
}

class _RevendaHomePageState extends State<RevendaHomePage> {

  List<dynamic> revendas;

  void getData() {
    rootBundle.loadString('assets/dados.json').then((jsonRevendaData) {
      revendas = json.decode(jsonRevendaData);
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Escolha uma Revenda'),
        actions: <Widget>[
          DropdownButton(
              icon: Align(
                alignment: Alignment.center,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    height: 18,
                    child: Image.asset(
                      'assets/transfer.png',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              items: [
                DropdownMenuItem(
                    child: Text('Melhor avaliação'), onTap: () {}, value: 1),
                DropdownMenuItem(
                    child: Text('Mais rapido'), onTap: () {}, value: 2),
                DropdownMenuItem(
                    child: Text('Mais barato'), onTap: () {}, value: 3),
              ],
              onChanged: (value) {
                print(value);
              }),
          SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text('?', style: TextStyle(fontSize: 30)),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          RevendaHeader(),
          RevendaBody(revendas: revendas),
        ],
      ),
    );
  }
}
