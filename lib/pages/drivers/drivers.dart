// @dart=2.9
import 'package:dashboard_flutter/constants/controllers.dart';
import 'package:dashboard_flutter/helpers/responsiveness.dart';
import 'package:dashboard_flutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriversPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
              child: CustomText(
                text: menuController.activeItem.value,
                size: 24,
                weight: FontWeight.bold,
              ),
            )
          ],
        ))
      ],
    );
  }
}
