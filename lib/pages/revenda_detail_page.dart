import 'package:desafio_revenda_app/themes/stylesRevenda.dart';
import 'package:desafio_revenda_app/ui_parts/detail_ui/panel_divider.dart';
import 'package:desafio_revenda_app/ui_parts/detail_ui/payment_button.dart';
import 'package:desafio_revenda_app/ui_parts/detail_ui/steps_panel.dart';
import 'package:flutter/material.dart';

class RevendaDetailPage extends StatefulWidget {
  final String tipo;
  final String nome;
  final double nota;
  final String tempoMedio;
  final double preco;

  const RevendaDetailPage({
    this.tipo,
    this.nome,
    this.nota,
    this.tempoMedio,
    this.preco,
  });

  @override
  RevendaDetailPageState createState() => RevendaDetailPageState();
}

class RevendaDetailPageState extends State<RevendaDetailPage> {
  int qty = 1;

  void increment() {
    setState(() {
      qty++;
    });
  }

  void decrement() {
    if (qty != 0) {
      setState(() {
        qty--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Select Products'),
        centerTitle: true,
        // actions: <Widget>[
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Align(
        //       alignment: Alignment.center,
        //       child: Text(
        //         '?',
        //         style: TextStyle(fontSize: 30),
        //       ),
        //     ),
        //   )
        // ],
      ),
      body: detailBody(),
    );
  }

  Widget detailBody() {
    return Column(
      children: <Widget>[
        StepsPanel(),
        PanelDivider(),
        detailResume(),
        SizedBox(height: 15),
        detailPanel(),
        Spacer(),
        PaymentButton(),
      ],
    );
  }

  Widget detailResume() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  child: Text('${qty.toString()}', style: StylesRevenda.detailQtyResumeStyle),
                  radius: 15,
                  backgroundColor: Colors.blueAccent,
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('${widget.nome}'),
                      Text('13kg Cylinder'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Text.rich(
                TextSpan(
                  text: 'CA\$',
                  style: TextStyle(fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(text: ' '),
                    TextSpan(text: '${(qty * widget.preco).toStringAsFixed(2)}', style: StylesRevenda.detailTotalResumeStyle),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget detailPanel() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 45,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text('${widget.nome}'),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: <Widget>[
                            Text('${widget.nota.toString()}',
                                //style: TextStyle(fontWeight: FontWeight.bold),
                                style: StylesRevenda.detailNotaCardStyle),
                            SizedBox(width: 10),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        elevation: 10,
                        child: Container(
                          width: 100,
                          padding: EdgeInsets.all(8),
                          color: Colors.blueGrey,
                          child: Text(
                            '${widget.tipo}',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('${widget.tempoMedio} min', style: StylesRevenda.detailTempoCardStyle),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('13kg Cylinder'),
                        SizedBox(height: 5),
                        Text('${widget.nome}'),
                        SizedBox(height: 5),
                        Text.rich(
                          TextSpan(
                            text: 'CA\$',
                            style: TextStyle(fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(text: ' ${widget.preco.toStringAsFixed(2)}', style: StylesRevenda.detailTotalCardStyle),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        child: IconButton(
                          icon: Icon(
                            Icons.remove,
                            color: qty != 0 ? Colors.black : Colors.transparent,
                          ),
                          onPressed: qty != 0 ? decrement : null,
                        ),
                        backgroundColor: qty != 0 ? Colors.grey[500] : Colors.transparent,
                      ),
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              'assets/botijao.png',
                              height: 80,
                              color: Colors.orange[800],
                            ),
                            Positioned(
                              child: Container(
                                child: Text(
                                  '$qty',
                                  style: StylesRevenda.detailQtyStyle,
                                ),
                                color: Colors.orangeAccent,
                              ),
                              bottom: 25,
                              right: (qty < 10 ? 34 : 29),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                            onPressed: increment),
                        backgroundColor: Colors.grey[500],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
