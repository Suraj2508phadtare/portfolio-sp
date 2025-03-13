import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp/project_utils/colors_helper.dart';
import 'package:sp/project_utils/common_text.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.13;
    return SizedBox(
      // height: 500,
      width: MediaQuery.of(context).size.width -width,
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
                width: MediaQuery.of(context).size.width/2 -width,
                child: Image.asset(
                  'assets/about-pic.png',
                  height: 400,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/2-width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorsHelper.greyColor),
                              borderRadius: BorderRadius.circular(25.00)),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/experience.png',
                                height: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Experience",
                                style: GoogleFonts.oswald(
                                    color: ColorsHelper.blackColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "3+ years",
                                style: GoogleFonts.oswald(
                                    fontSize: 18,
                                    color: ColorsHelper.greyColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Mobile Application Development",
                                style: GoogleFonts.oswald(
                                    fontSize: 18,
                                    color: ColorsHelper.greyColor,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorsHelper.greyColor),
                              borderRadius: BorderRadius.circular(25.00)),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/education.png',
                                height: 40,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Education",
                                style: GoogleFonts.oswald(
                                    color: ColorsHelper.blackColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Bachelor of Technology",
                                style: GoogleFonts.oswald(
                                    fontSize: 18,
                                    color: ColorsHelper.greyColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Computer Science And Engineering",
                                style: GoogleFonts.oswald(
                                    fontSize: 18,
                                    color: ColorsHelper.greyColor,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        )
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
}
