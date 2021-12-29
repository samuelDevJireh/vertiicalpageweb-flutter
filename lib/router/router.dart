import 'package:web_vertical_landingpage/router/routeHandlers.dart';
import 'package:fluro/fluro.dart';

class RouterFluro {
  static FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    //rutas
    router.define('/:page', handler: homeHandler);

    //404
    router.notFoundHandler = homeHandler;
  }
}
