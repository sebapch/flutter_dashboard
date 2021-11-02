import 'package:dashboard_flutter/constants/controllers.dart';
import 'package:dashboard_flutter/constants/style.dart';
import 'package:dashboard_flutter/helpers/responsiveness.dart';
import 'package:dashboard_flutter/routing/routes.dart';
import 'package:dashboard_flutter/widgets/custom_text.dart';
import 'package:dashboard_flutter/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(children: [
        if(ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: _width / 48),
                  Padding(padding: EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Flexible(child: CustomText(
                    text: "Dash",
                    size: 20,
                    weight: FontWeight.bold,
                    color: active,
                  )
                  ),

                  SizedBox(width: _width / 48,)
                ],
              ),


            ],
          ),


        Divider(color: lightGrey.withOpacity(.1),),

        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItems.map((itemName) => SideMenuItem(
            itemName: itemName == AuthenticationPageRoute ? "Log Out" : itemName,
            onTap: (){
              if(itemName == AuthenticationPageRoute){
                // TODO:: go to authentication page
              }

              if(!menuController.isActive(itemName)){
                menuController.changeActiveItemTo(itemName);
                if(ResponsiveWidget.isSmallScreen(context))
                  Get.back();
                navigationController.navigateTo(itemName);
              }
            },
          )).toList(),
        )
      ],),

    );
  }
}