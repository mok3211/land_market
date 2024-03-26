
import "package:fluro/fluro.dart";
import "package:flutter/material.dart";

class AllRouter {

  static FluroRouter  router = FluroRouter();

  static const String rootPath = "/";
  static const String loginPath = "/login";
  static const String homePath = "/home";

  static final Handler _homeHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params){
    return HomeScreen();
  });

  static final Handler _rootHandler = Handler(handlerFunc: (context, parameters){
    return LoginScreen()
  });
  
  static void setupRouter() {
    router.define(rootPath, handler: _rootHandler);
    router.define(loginPath, handler: _rootHandler);
    router.define(homePath, handler: _homeHandler);
  }

  static void navigateTo(BuildContext context, String route) {
    router.navigateTo(context, route, transition: TransitionType.inFromRight);
  }
}