// @dart=2.9
import 'package:dashboard_flutter/pages/authentication/authentication.dart';
import 'package:dashboard_flutter/pages/clients/clients.dart';
import 'package:dashboard_flutter/pages/drivers/drivers.dart';
import '../pages/overview/overview.dart';
import 'package:dashboard_flutter/routing/routes.dart';
import 'package:flutter/material.dart';
import 'dart:js';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    case AuthenticationPageRoute:
      return _getPageRoute(AuthenticationPage());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}