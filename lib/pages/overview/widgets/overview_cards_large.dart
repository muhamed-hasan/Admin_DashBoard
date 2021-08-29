import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:web_dashboard/pages/overview/widgets/info_card.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          children: [
            InfoCard(
              title: 'Rides in progress',
              value: '7',
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: 'Packages delivered',
              value: '50',
              onTap: () {},
              topColor: Colors.green,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: 'Cancelled delivery',
              value: '5',
              onTap: () {},
              topColor: Colors.red,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: 'Scheduled deliveries',
              value: '33',
              onTap: () {},
              topColor: Colors.indigo,
            ),
            SizedBox(width: _width / 64),
          ],
        ),
        Container(
            width: _width / 2,
            height: 300,
            child: SimpleBarChart.withSampleData())
      ],
    );
  }
}
