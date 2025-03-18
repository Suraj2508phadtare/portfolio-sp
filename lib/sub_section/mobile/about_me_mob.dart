import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp/project_utils/colors_helper.dart';
import 'package:sp/project_utils/common_text.dart';

class AboutScreenMob extends StatelessWidget {
  const AboutScreenMob({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Get To Know More',
            style:
                GoogleFonts.oswald(fontSize: 16, color: ColorsHelper.greyColor),
          ),
          // SizedBox(height: 5,),
          Text("About Me",
              style: GoogleFonts.oswald(
                  fontSize: 34,
                  color: ColorsHelper.blackColor,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 25,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Image.asset(
                  'assets/about-pic.png',
                  height: 200,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Flexible(
                child: Column(
                  children: [
                    Wrap(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        containAbout(
                            // screenWidth,
                            'assets/experience.png',
                            'Experience',
                            '3+ years',
                            'Mobile Application Development'),
                        SizedBox(height: 25, width: 25),
                        containAbout(
                            // screenWidth,
                            'assets/experience.png',
                            'Education',
                            'Bachelor of Technology',
                            'Computer Science And Engineering'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      TextHelper.aboutDescription,
                      style: GoogleFonts.oswald(fontSize: 14),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 'assets/experience.png',
  // Experience
  // 3+ years
  // Mobile Application Development
  Widget containAbout(
      String imageUrl, String mainText, String subText, String lastText) {
    return Container(
      width: 180,
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          border: Border.all(color: ColorsHelper.greyColor),
          borderRadius: BorderRadius.circular(25.00)),
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            height: 40,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            mainText,
            style: GoogleFonts.oswald(
                color: ColorsHelper.blackColor,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subText,
            style: GoogleFonts.oswald(
                fontSize: 18,
                color: ColorsHelper.blackColor,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(
              text: lastText,
              style: GoogleFonts.oswald(
                fontSize: 18,
                color: ColorsHelper.greyColor,
                fontWeight: FontWeight.w300,
              ),
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
