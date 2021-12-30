//import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {
  PageController pageController = new PageController();

  List<String> _pages = ['home', 'about', 'contac', 'location', 'pricing'];

  int _currentIndex = 0;

  //
  createdscrollController(String routeName) {
    this.pageController =
        new PageController(initialPage: getPageIndex(routeName));

    pageController.addListener(() {
      final currentPage = (pageController.page ?? 0).round();

      if (currentPage != _currentIndex) {
        html.window.history.pushState(null, '', '#/${_pages[currentPage]}');
        _currentIndex = currentPage;

        var tituloPagina = _pages[currentPage];
        tituloPagina[0].toUpperCase();
        html.document.title = tituloPagina;
      }
    });
  }

  getPageIndex(String routename) {
    return (_pages.indexOf(routename) == -1) ? 0 : _pages.indexOf(routename);
  }

  goTo(int index) {
    //print(_pages[index]);

    //html.window.history.pushState(null, '', '#/${_pages[index]}');

    pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
