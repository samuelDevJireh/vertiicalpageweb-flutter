import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_vertical_landingpage/provider/page_provider.dart';
import 'package:web_vertical_landingpage/ui/shared/custom_menu.dart';
import 'package:web_vertical_landingpage/ui/views/about_view.dart';
import 'package:web_vertical_landingpage/ui/views/contact_view.dart';
import 'package:web_vertical_landingpage/ui/views/home_view.dart';
import 'package:web_vertical_landingpage/ui/views/location_view.dart';
import 'package:web_vertical_landingpage/ui/views/pricing_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(top: 10, right: 15, child: CustomMenuWidget()),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5],
          colors: [Colors.green, Colors.blue]));
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerController =
        Provider.of<PageProvider>(context, listen: false);
    return PageView(
      controller: providerController.pageController,
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        AboutView(),
        ContacView(),
        LocationView(),
        PricingView(),
      ],
    );
  }
}
