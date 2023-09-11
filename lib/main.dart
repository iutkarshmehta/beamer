import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beamer/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouterDelegate = AppRoutesDelegate().appRoutesDelegate;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouterDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: _appRouterDelegate,
      ),
    );
  }
}
