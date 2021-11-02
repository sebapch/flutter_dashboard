import 'package:dashboard_flutter/helpers/responsiveness.dart';
import 'package:dashboard_flutter/widgets/large_screen.dart';
import 'package:dashboard_flutter/widgets/side_menu.dart';
import 'package:dashboard_flutter/widgets/small_screen.dart';
import 'package:dashboard_flutter/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(child: SideMenu(),),
      body: ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen()),
    );
  }
}
