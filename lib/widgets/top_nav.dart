import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/helpers/responsiveness.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
      leading: !Responsiveness.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  child: Image.asset(
                    'assets/icons/logo.png',
                    width: 30,
                  ),
                )
              ],
            )
          : IconButton(
              color: lightGrey,
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu)),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
              child: CustomText(
            text: 'Dash',
            color: lightGrey,
            size: 20,
            weight: FontWeight.bold,
          )),
          Spacer(),
          IconButton(
              onPressed: () {
                //TODO
              },
              icon: Icon(
                Icons.settings,
                color: dark.withOpacity(0.7),
              )),
          Stack(
            children: [
              IconButton(
                  onPressed: () {
                    //TODO
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: dark.withOpacity(.7),
                  )),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: active,
                        border: Border.all(
                          color: light,
                          width: 2,
                        )),
                  ))
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          SizedBox(width: 24),
          Row(
            children: [
              CustomText(
                text: 'Mohamed Hasan',
                color: lightGrey,
              ),
              SizedBox(width: 16),
              Container(
                decoration: BoxDecoration(
                  color: light,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundColor: light,
                    child: Icon(
                      Icons.person_outline,
                      color: dark,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      iconTheme: IconThemeData(
        color: dark,
      ),
      backgroundColor: light);
}
