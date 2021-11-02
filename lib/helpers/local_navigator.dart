import 'package:dashboard_flutter/constants/controllers.dart';
import 'package:dashboard_flutter/routing/router.dart';
import 'package:dashboard_flutter/routing/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);