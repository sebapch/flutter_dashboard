// @dart=2.9
import 'package:dashboard_flutter/helpers/responsiveness.dart';
import 'package:dashboard_flutter/widgets/horizontal_menu_item.dart';
import 'package:dashboard_flutter/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';


class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({ Key key, this.itemName, this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isCustomScreen(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap,);

    return HorizontalMenuItem(itemName: itemName, onTap: onTap,);
  }
}