import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp/project_utils/colors_helper.dart';
import 'package:sp/project_utils/common_text.dart';

class AboutScreenMob extends StatelessWidget {
  const AboutScreenMob({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      // height: 500,
      width:screenWidth,
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
              SizedBox(height: 30,),
              Flexible(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: screenWidth*0.25,
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
                              Wrap(
                                alignment: WrapAlignment.center,
                                children: [
                                  Text(
                                    "Mobile ",
                                    style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      color: ColorsHelper.greyColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    "Application ",
                                    style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      color: ColorsHelper.greyColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    "Development",
                                    style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      color: ColorsHelper.greyColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth*0.25,
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
                              // Text(
                              //   "Bachelor of Technology",
                              //   style: GoogleFonts.oswald(
                              //       fontSize: 18,
                              //       color: ColorsHelper.greyColor,
                              //       fontWeight: FontWeight.w300),
                              // ),
                               Wrap(
                                alignment: WrapAlignment.center,
                                children: [
                                  Text(
                                    "Bachelor ",
                                    style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      color: ColorsHelper.greyColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    "of ",
                                    style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      color: ColorsHelper.greyColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    "Technology",
                                    style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      color: ColorsHelper.greyColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                        
                                      Wrap(
                                alignment: WrapAlignment.center,
                                children: [
                                  Text(
                                    "Computer ",
                                    style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      color: ColorsHelper.greyColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    "Science ",
                                    style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      color: ColorsHelper.greyColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    "And ",
                                    style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      color: ColorsHelper.greyColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                   Text(
                                    "Engineering",
                                    style: GoogleFonts.oswald(
                                      fontSize: 18,
                                      color: ColorsHelper.greyColor,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              )
                                 // ],
                                //),
                              //)
                            ],
                          ),
                        )
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
}
