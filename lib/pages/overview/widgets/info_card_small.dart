import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String? title;
  final String? value;
  final Color? topColor;
  final bool? isActive;
  final Function? onTap;

  const InfoCardSmall(
      {Key? key,
      this.title,
      this.value,
      this.topColor,
      this.isActive = false,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Card(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: title,
                    size: 24,
                    weight: FontWeight.w300,
                    color: isActive! ? active : lightGrey),
                CustomText(
                    text: value,
                    size: 24,
                    weight: FontWeight.bold,
                    color: isActive! ? active : lightGrey)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
