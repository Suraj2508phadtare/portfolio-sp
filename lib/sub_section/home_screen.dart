import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../project_utils/colors_helper.dart';
import '../widget_helper/widget_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/profile.png',
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello, I'm",
                style: GoogleFonts.oswald(
                    color: ColorsHelper.greyColor, fontSize: 18),
              ),
              Text(
                "Suraj Phadtare",
                style: GoogleFonts.oswald(
                    color: ColorsHelper.blackColor,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Flutter Developer",
                style: GoogleFonts.oswald(
                    color: ColorsHelper.greyColor,
                    fontSize: 38,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WidgetHelper.outlinedButtonHelper(
                      () {}, "Download CV", ColorsHelper.whiteColor),
                  SizedBox(
                    width: 20,
                  ),
                  WidgetHelper.outlinedButtonHelper(
                      () {}, "Contact Info", ColorsHelper.greyColor),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/linkedin.png',
                    height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/github.png',
                    height: 50,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
