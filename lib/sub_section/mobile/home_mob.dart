import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../project_utils/colors_helper.dart';
import '../../widget_helper/widget_helper.dart';

class HomeScreenMob extends StatelessWidget {
  const HomeScreenMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/profile.png',
          height: 200,
        ),
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
          mainAxisAlignment: MainAxisAlignment.center,
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
        mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
