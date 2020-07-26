import 'package:desafio_revenda_app/routers/router.gr.dart';
import 'package:desafio_revenda_app/themes/stylesRevenda.dart';
import 'package:flutter/material.dart';
import 'revenda_melhor_preco_tag.dart';

class RevendaCard extends StatelessWidget {
  final String tipo;
  final String nome;
  final String cor;
  final double nota;
  final String tempoMedio;
  final bool melhorPreco;
  final double preco;

  RevendaCard(
      {this.tipo,
      this.nome,
      this.cor,
      this.nota,
      this.tempoMedio,
      this.melhorPreco,
      this.preco});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          Routes.revendaDetailPage,
          arguments: RevendaDetailPageArguments(
            tipo: tipo,
            nome: nome,
            nota: nota,
            tempoMedio: tempoMedio,
            preco: preco,
          ),
        );
      },
      child: Column(
        children: <Widget>[
          SizedBox(height: 18),
          Container(
              height: 110,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 30,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                      ),
                      color: Color(
                        int.parse('0xFF$cor'),
                      ),
                    ),
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          tipo,
                          style: StylesRevenda.cardLabelStyle1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                nome,
                                style: StylesRevenda.cardNameStyle,
                              ),
                            ),
                            Spacer(),
                            melhorPreco ? RevendaMelhorPrecoTag() : Container(),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Nota',
                                  style: StylesRevenda.cardSpecStyle
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '${double.parse(nota.toString())}',
                                      style: StylesRevenda.cardSpecValueStyle,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  'Tempo Medio',
                                  style: StylesRevenda.cardSpecStyle,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: tempoMedio,
                                      style: StylesRevenda.cardSpecDurationLabelStyle,
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: ' min',
                                            style: StylesRevenda.cardSpecDurationValueStyle
                                        )
                                      ]),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text('Preço',
                                    style: StylesRevenda.cardSpecStyle,
                                ),
                                Text(
                                  'R\$ ${preco.toStringAsFixed(2)}',
                                  style: StylesRevenda.cardSpecDurationLabelStyle,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
