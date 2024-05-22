import 'package:flutter/material.dart';
import 'package:ongeneraterouteyt/routes/constants.dart';
import 'package:ongeneraterouteyt/screens/home_page.dart';
import 'package:ongeneraterouteyt/screens/login_page.dart';
import 'package:ongeneraterouteyt/screens/register_page.dart';

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyRouteNames.initialRoute:
        return MaterialPageRoute(builder: (context) => LoginPage());

      case MyRouteNames.loginRoute:
        var data = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (context) => HomePage(
                  data: data,
                ));
      case MyRouteNames.registerRoute:
        return MaterialPageRoute(builder: (context) => RegisterPage());
    }

    return MaterialPageRoute(
        builder: (context) => Scaffold(
              body: Center(
                child: Text("No route Defined"),
              ),
            ));
  }
}
