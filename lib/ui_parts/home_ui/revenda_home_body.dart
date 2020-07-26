import 'package:flutter/material.dart';
import 'revenda_home_card.dart';

class RevendaBody extends StatelessWidget {
  final List revendas;
  const RevendaBody({@required this.revendas,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: revendas?.length ?? 0,
          itemBuilder: (context, index) {
            return RevendaCard(
              tipo: revendas[index]['tipo'],
              nome: revendas[index]['nome'],
              cor: revendas[index]['cor'],
              nota: revendas[index]['nota'],
              tempoMedio: revendas[index]['tempoMedio'],
              melhorPreco: revendas[index]['melhorPreco'],
              preco: revendas[index]['preco'],
            );
          }),
    );
  }
}
