import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp/project_utils/common_text.dart';
import 'package:sp/widget_helper/widget_helper.dart';
import '../../project_utils/colors_helper.dart';

class ExperienceMobPage extends StatelessWidget {
  const ExperienceMobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WidgetHelper.headerUi('Explore My', 'Experience'),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            skillSection(
                'Frontend Development', TextHelper.frontendSkills, context),
                SizedBox(height: 15,),
            skillSection(
                'Backend Development', TextHelper.backEndSkills, context),
                  SizedBox(height: 10,),
          ],
        )
      ],
    );
  }

  skillSection(String skillTitle, List<String> list, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.topRight,
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
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            // SizedBox(
                            //   height: 5,
                            // ),
                            Text("Experienced", style: TextStyle(fontSize: 12),)
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
      ),
    );
  }
}
