import 'package:flutter/material.dart';
import 'package:flutterstudy_hkzf/pages/home/index.dart';
import 'package:flutterstudy_hkzf/pages/login.dart';
import 'package:fluro/fluro.dart';
import 'package:flutterstudy_hkzf/pages/not_found.dart';
import 'package:flutterstudy_hkzf/pages/register.dart';
import 'package:flutterstudy_hkzf/pages/room_detail/index.dart';

class Routes {

  // 定义路由名称
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
  static String roomDetail = '/room/:roomId';

  // 定义路由处理函数
  static Handler homeHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const HomePage();
  });
  static Handler loginHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const LoginPage();
  });

  static Handler registerHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const RegisterPage();
  });

  static Handler notFoundHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const NotFoundPage();
  });

  static Handler roomDetailHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return RoomDetailPage(roomId: params["roomId"]?.first,);
  });

  // 编写函数 configureRoutes 关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: homeHandler);
    router.define(login, handler: loginHandler);
    router.define(roomDetail, handler: roomDetailHandler);
    router.define(register, handler: registerHandler);
    router.notFoundHandler = notFoundHandler;
  }
}
