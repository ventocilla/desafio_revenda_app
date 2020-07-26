// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:desafio_revenda_app/pages/revenda_home_page.dart';
import 'package:desafio_revenda_app/pages/revenda_detail_page.dart';

abstract class Routes {
  static const revendaHomePage = '/';
  static const revendaDetailPage = '/revenda-detail-page';
  static const all = {
    revendaHomePage,
    revendaDetailPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.revendaHomePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => RevendaHomePage(),
          settings: settings,
        );
      case Routes.revendaDetailPage:
        if (hasInvalidArgs<RevendaDetailPageArguments>(args)) {
          return misTypedArgsRoute<RevendaDetailPageArguments>(args);
        }
        final typedArgs =
            args as RevendaDetailPageArguments ?? RevendaDetailPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => RevendaDetailPage(
              tipo: typedArgs.tipo,
              nome: typedArgs.nome,
              nota: typedArgs.nota,
              tempoMedio: typedArgs.tempoMedio,
              preco: typedArgs.preco),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//RevendaDetailPage arguments holder class
class RevendaDetailPageArguments {
  final String tipo;
  final String nome;
  final double nota;
  final String tempoMedio;
  final double preco;
  RevendaDetailPageArguments(
      {this.tipo, this.nome, this.nota, this.tempoMedio, this.preco});
}
