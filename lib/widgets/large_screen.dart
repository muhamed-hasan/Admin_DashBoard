import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/local_navigator.dart';
import 'package:web_dashboard/routing/routes.dart';
import 'package:web_dashboard/widgets/horizontal_menu_item.dart';
import 'package:web_dashboard/widgets/side_menu.dart';
import 'package:web_dashboard/widgets/vertical_menu_item.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  _LargeScreenState createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: SideMenu()),
        Expanded(flex: 5, child: localNavigator()),
      ],
    );
  }
}
