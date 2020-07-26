import 'package:auto_route/auto_route_annotations.dart';
import 'package:desafio_revenda_app/pages/revenda_detail_page.dart';
import 'package:desafio_revenda_app/pages/revenda_home_page.dart';

@MaterialAutoRouter()
class $Router {

  @initial
  RevendaHomePage revendaHomePage;
  RevendaDetailPage revendaDetailPage;

}
