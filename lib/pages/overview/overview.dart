import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_cards_large.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_cards_medium.dart';
import 'package:web_dashboard/pages/overview/widgets/overview_cards_small.dart';
import 'package:web_dashboard/pages/overview/widgets/revenue_large_section.dart';
import 'package:web_dashboard/pages/overview/widgets/revenue_small_section.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: Responsiveness.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            )),
        Expanded(
            child: ListView(
          children: [
            if (Responsiveness.isLargeScreen(context) ||
                Responsiveness.isMediumScreen(context))
              if (Responsiveness.isCustomScreen(context))
                OverviewCardsMediamScreen()
              else
                OverviewCardsLargeScreen()
            else
              OverviewCardsSmallScreen(),
            if (!Responsiveness.isSmallScreen(context))
              RevenueLargeSection()
            else
              RevenueSmallSection()
          ],
        )),
      ],
    );
  }
}
