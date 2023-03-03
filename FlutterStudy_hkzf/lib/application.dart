import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/index.dart';
import 'package:flutterstudy_hkzf/pages/login.dart';
import 'package:fluro/fluro.dart';
import 'package:flutterstudy_hkzf/routes/routes.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     FluroRouter router = FluroRouter();
     Routes.configureRoutes(router);

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        colorScheme: const ColorScheme.light().copyWith(primary: Colors.green),
      ),
      onGenerateRoute: router.generator,
    );
  }
}
