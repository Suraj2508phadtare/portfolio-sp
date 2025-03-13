import 'package:flutter/material.dart';
import 'package:sp/project_utils/colors_helper.dart';
import 'package:sp/widget_helper/widget_helper.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../project_utils/stat_method.dart';

class GetInTouch extends StatefulWidget {
  const GetInTouch({super.key});

  @override
  State<GetInTouch> createState() => _GetInTouchState();
}

class _GetInTouchState extends State<GetInTouch> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WidgetHelper.headerUi('Get in Touch', 'Contact Me'),
          Container(
            padding: EdgeInsets.all(40),
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
                          height: 40,
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
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),

                    // TextButton(onPressed: () {}, child: Text('Suraj007Phadtare@gmail.com', style: TextStyle(color: ColorsHelper.blackColor),))
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                // https://www.linkedin.com/in/suraj-phadtare/
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/linkedin_bottom.png',
                      height: 40,
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
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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

          SizedBox(height: 30,),

          Text("Copyright © 2025 Suraj Phadtare. All Rights Reserved.", style: TextStyle(color: ColorsHelper.greyColor, fontSize: 18, ),)
        ],
      ),
    );
  }
}
