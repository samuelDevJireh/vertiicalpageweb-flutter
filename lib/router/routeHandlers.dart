import 'package:provider/provider.dart';
import 'package:web_vertical_landingpage/provider/page_provider.dart';
import 'package:web_vertical_landingpage/ui/pages/home_page.dart';
import 'package:fluro/fluro.dart';

final homeHandler = Handler(
  handlerFunc: (context, parameters) {
    // print(parameters);

    final page = parameters['page']!.first;

    if (page != '/') {
      final pageProvider = Provider.of<PageProvider>(context!, listen: false);

      pageProvider.createdscrollController(page);
      return HomePage();
    }
  },
);
