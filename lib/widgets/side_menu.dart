import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/pages/authentication/authentication.dart';
import 'package:web_dashboard/routing/routes.dart';
import 'package:web_dashboard/widgets/custom_text.dart';
import 'package:web_dashboard/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (Responsiveness.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset('assets/icons/logo.png'),
                    ),
                    Flexible(
                        child: CustomText(
                      text: 'Dash',
                      size: 20,
                      weight: FontWeight.bold,
                      color: active,
                    )),
                    SizedBox(width: _width / 48),
                  ],
                ),
                SizedBox(height: 40),
                Divider(
                  color: lightGrey.withOpacity(.1),
                ),
              ],
            ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItem(
                    itemName: itemName == authenticationPageRoute
                        ? "Log Out"
                        : itemName,
                    onTap: () {
                      if (itemName == authenticationPageDisplayName) {
                        Get.offAll(() => AuthenticationPage());
                      }
                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItem(itemName);
                        if (Responsiveness.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigateTo(itemName);
                      }
                    }))
                .toList(),
          ),
        ],
      ),
    );
  }
}
