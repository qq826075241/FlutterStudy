import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/index.dart';
import 'package:flutterstudy_hkzf/pages/login.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/src/widgets/framework.dart';

class Routes {

  // 定义路由名称
  static String home = '/';
  static String login = '/login';

  // 定义路由处理函数
  static Handler homeHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return HomePage();
  });
  static Handler loginHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return LoginPage();
  });

  // 编写函数 configureRoutes 关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: homeHandler);
    router.define(login, handler: loginHandler);
  }
}
