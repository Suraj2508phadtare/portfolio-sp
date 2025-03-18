import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp/project_utils/common_text.dart';
import 'package:sp/widget_helper/widget_helper.dart';
import '../project_utils/colors_helper.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth - screenWidth * 0.13,
      child: Column(
        children: [
          WidgetHelper.headerUi('Explore My', 'Experience'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(50.0),
                child: skillSection('Frontend Development',
                    TextHelper.frontendSkills, screenWidth),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: skillSection('Backend Development',
                    TextHelper.backEndSkills, screenWidth),
              ),
            ],
          )
        ],
      ),
    );
  }

  skillSection(String skillTitle, List<String> list, double screenWidth) {
    return Container(
      //height: 500,
      alignment: Alignment.topRight,
      width: screenWidth / 2 - screenWidth * 0.13,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(color: ColorsHelper.greyColor, width: 1),
        borderRadius: BorderRadius.circular(25.00),
      ),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Center(
            child: Text(
              skillTitle,
              style: GoogleFonts.oswald(
                  color: ColorsHelper.greyColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              GridView.builder(
                itemCount: list.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4.0,
                ),
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/checkmark.png',
                        height: 25,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index],
                            style: GoogleFonts.oswald(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Experienced")
                        ],
                      )
                    ],
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
