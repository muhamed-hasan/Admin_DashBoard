import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:web_dashboard/constants/controllers.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/pages/clients/widgets/clients_table.dart';
import 'package:web_dashboard/pages/drivers/widgets/drivers_table.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

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
            children: [ClientsTable()],
          ),
        )
      ],
    );
  }
}
