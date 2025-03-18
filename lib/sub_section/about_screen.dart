import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp/project_utils/colors_helper.dart';
import 'package:sp/project_utils/common_text.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      // height: 500,
      width: screenWidth - screenWidth * 0.13,
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
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: screenWidth / 2 - screenWidth * 0.13,
                child: Image.asset(
                  'assets/about-pic.png',
                  height: 400,
                ),
              ),
              SizedBox(
                width: screenWidth / 2 - screenWidth * 0.13,
                child: 
                
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        containAbout(
                            screenWidth,
                            'assets/experience.png',
                            'Experience',
                            '3+ years',
                            'Mobile Application Development'),
                        containAbout(
                            screenWidth,
                            'assets/experience.png',
                            'Education',
                            'Bachelor of Technology',
                            'Computer Science And Engineering'),
                      ],
                    ),
                    SizedBox(
                      height: 40,
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

  Widget containAbout(double screenWidth, String imageUrl, String mainText,
      String subText, String lastText) {
    return Container(
      //width: screenWidth * 0.25,
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
                color: ColorsHelper.greyColor,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            lastText,
            style: GoogleFonts.oswald(
              fontSize: 18,
              color: ColorsHelper.greyColor,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
