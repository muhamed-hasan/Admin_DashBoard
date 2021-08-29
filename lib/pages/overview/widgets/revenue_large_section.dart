import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:web_dashboard/pages/overview/widgets/revenue_data.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class RevenueLargeSection extends StatelessWidget {
  const RevenueLargeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Revenue Chart',
                    size: 20,
                    weight: FontWeight.bold,
                    color: lightGrey,
                  ),
                  Container(
                    width: 600,
                    height: 200,
                    child: SimpleBarChart.withSampleData(),
                  ),
                ],
              ),
            ),
            Container(
              width: 1,
              height: 120,
              color: lightGrey,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    RevenueData(
                      amount: '25',
                      title: 'Today\'s revenue',
                    ),
                    RevenueData(
                      amount: '210',
                      title: 'Last 7 days',
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    RevenueData(
                      amount: '1,320',
                      title: 'Last 30 days',
                    ),
                    RevenueData(
                      amount: '10,650',
                      title: 'Last 12 months',
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
