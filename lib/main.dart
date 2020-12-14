import 'package:desafio_revenda_app/pages/revenda_detail_page.dart';
import 'package:flutter/material.dart';
import 'pages/revenda_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Revenda App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RevendaHomePage(),
      routes: {
        '/detail': (_) => RevendaDetailPage(),
      }
      // builder: ExtendedNavigator<Router>(
      //   router: Router(),
      // ),
    );
  }
}
