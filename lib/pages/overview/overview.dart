// @dart=2.9
import 'package:dashboard_flutter/constants/controllers.dart';
import 'package:dashboard_flutter/helpers/responsiveness.dart';
import 'package:dashboard_flutter/pages/overview/widgets/overview_cards_large.dart';
import 'package:dashboard_flutter/pages/overview/widgets/overview_cards_medium.dart';
import 'package:dashboard_flutter/pages/overview/widgets/overview_cards_small.dart';
import 'package:dashboard_flutter/pages/overview/widgets/revenue_section_large.dart';
import 'package:dashboard_flutter/pages/overview/widgets/revenue_section_small.dart';
import 'package:dashboard_flutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
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
        )),
        Expanded(child: ListView(
          children: [
            if(ResponsiveWidget.isLargeScreen(context) || ResponsiveWidget.isMediumScreen(context))
              if(ResponsiveWidget.isCustomScreen(context))
                OverviewCardsMediumScreenSizes()
            else
            OverviewCardsLargeScreen()
            else
              OverviewCardsSmallScreenSizes(),

            if(!ResponsiveWidget.isSmallScreen(context))
            RevenueSectionLarge()
            else
              RevenueSectionSmall()
          ],
        )),

      ],
    );
  }
}
