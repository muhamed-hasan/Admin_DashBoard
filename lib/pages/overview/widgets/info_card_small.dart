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
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.white,
              border:
                  Border.all(color: isActive! ? active : lightGrey, width: .5)),
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
    );
  }
}
