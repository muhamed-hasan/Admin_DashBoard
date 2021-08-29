import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';

class RevenueData extends StatelessWidget {
  final String? title;
  final String? amount;

  const RevenueData({Key? key, this.title, this.amount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: '$title \n\n',
              style: TextStyle(color: lightGrey, fontSize: 16)),
          TextSpan(
              text: '\$ $amount',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: dark)),
        ]),
      ),
    );
  }
}
