import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rides in progress',
            value: '7',
            onTap: () {},
            isActive: true,
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Packages delivered',
            value: '50',
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Cancelled delivery',
            value: '5',
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Scheduled deliveries',
            value: '33',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
