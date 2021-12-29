import 'package:web_vertical_landingpage/ui/pages/home_page.dart';
import 'package:fluro/fluro.dart';

final homeHandler = Handler(
  handlerFunc: (context, parameters) {
    return HomePage();
  },
);
