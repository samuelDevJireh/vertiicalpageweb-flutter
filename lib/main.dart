import 'package:flutter/material.dart';
import 'package:web_vertical_landingpage/router/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    RouterFluro.configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        title: 'Landing page',
        onGenerateRoute: RouterFluro.router.generator);
  }
}
