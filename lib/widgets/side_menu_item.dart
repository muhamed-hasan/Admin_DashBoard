import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/widgets/horizontal_menu_item.dart';
import 'package:web_dashboard/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (Responsiveness.isCustomScreen(context)) {
      return VerticalMenuItems(itemName: itemName, onTap: onTap);
    }
    return HorizontalMenuItems(itemName: itemName, onTap: onTap);
  }
}
