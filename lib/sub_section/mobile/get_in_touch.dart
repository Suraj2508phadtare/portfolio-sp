import 'package:flutter/material.dart';
import 'package:sp/project_utils/colors_helper.dart';
import 'package:sp/widget_helper/widget_helper.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../project_utils/stat_method.dart';

class GetInTouchMob extends StatefulWidget {
  const GetInTouchMob({super.key});

  @override
  State<GetInTouchMob> createState() => _GetInTouchState();
}

class _GetInTouchState extends State<GetInTouchMob> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthScreen - widthScreen * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WidgetHelper.headerUi('Get in Touch', 'Contact Me'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: ColorsHelper.greyColor, width: 1)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/email.png',
                          height: widthScreen * 0.045,
                        ),
                        TextButton(
                            onPressed: () {
                              launchUrlString(
                                  "https://mail.google.com/mail/u/0/#inbox?compose=CllgCJlJVjvxKlJbWrWQGsxNwLDLdTxxhgkxgWKQqcmFKfcSWjLGkMTmGlxtgdFJWttpDVBZpdq");
                            },
                            child: Text(
                              'suraj007phadtare@gmail.com',
                              style: TextStyle(
                                  color: ColorsHelper.blackColor,
                                  fontSize: widthScreen * 0.025,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),
                    // TextButton(onPressed: () {}, child: Text('Suraj007Phadtare@gmail.com', style: TextStyle(color: ColorsHelper.blackColor),))
                  ],
                ),
                SizedBox(
                  width: widthScreen * 0.04,
                ),
                // https://www.linkedin.com/in/suraj-phadtare/
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/linkedin_bottom.png',
                      height: widthScreen * 0.045,
                    ),
                    TextButton(
                        onPressed: () {
                          launchUrlString(
                              "https://www.linkedin.com/in/suraj-phadtare/");
                        },
                        child: Text(
                          'LinkedIn',
                          style: TextStyle(
                              color: ColorsHelper.blackColor,
                              fontSize: widthScreen * 0.025,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            // wr: MainAxisAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              WidgetHelper.headersubSection(() {
                GlobalKey key = StaticHelper.navbarKeyList[0];
                StaticHelper.scrollToSection(key);
              }, "Home"),
              WidgetHelper.headersubSection(() {
                GlobalKey key = StaticHelper.navbarKeyList[1];
                StaticHelper.scrollToSection(key);
              }, "About"),
              WidgetHelper.headersubSection(() {
                GlobalKey key = StaticHelper.navbarKeyList[2];
                StaticHelper.scrollToSection(key);
              }, "Experience"),
              WidgetHelper.headersubSection(() {
                GlobalKey key = StaticHelper.navbarKeyList[3];
                StaticHelper.scrollToSection(key);
              }, "Proejcts"),
              WidgetHelper.headersubSection(() {
                GlobalKey key = StaticHelper.navbarKeyList[4];
                StaticHelper.scrollToSection(key);
              }, "Contact"),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Copyright © 2025 Suraj Phadtare. All Rights Reserved.",
            style: TextStyle(
              color: ColorsHelper.greyColor,
              fontSize: widthScreen * 0.025,
            ),
          )
        ],
      ),
    );
  }
}
