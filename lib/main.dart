import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_vertical_landingpage/provider/page_provider.dart';
import 'package:web_vertical_landingpage/router/router.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: MyApp(),
        providers: [ChangeNotifierProvider(create: (_) => PageProvider())]);
  }
}

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
