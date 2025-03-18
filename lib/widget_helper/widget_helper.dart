import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../project_utils/colors_helper.dart';

class WidgetHelper {
  // static TextStyle? headSubSection() {
  //   return TextStyle(color: ColorsHelper.blackColor, fontSize: 26, fontWeight: FontWeight.w400);
  // }

  static headersubSection(VoidCallback callback, String text) {
    return TextButton(
        onPressed: () {
          callback();
        } ,
        child: Text(text,
            style: GoogleFonts.oswald(
                color: ColorsHelper.blackColor,
                fontSize: 22,
                fontWeight: FontWeight.w400)));

    //TextStyle(color: ColorsHelper.blackColor, fontSize: 26, fontWeight: FontWeight.w400),));
  }

  static outlinedButtonHelper(VoidCallback callback, String text, Color color) {
    return OutlinedButton(
        onPressed: () => callback(),
        style: OutlinedButton.styleFrom(
          backgroundColor: color,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            side: BorderSide(color: ColorsHelper.blackColor)),
        child: Text(
          text,
          style: GoogleFonts.oswald(color: ColorsHelper.blackColor, fontSize: 18),
        ));
  }

  static headerUi(String test1, String test2){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Text(
          test1,
          style:
              GoogleFonts.oswald(fontSize: 16, color: ColorsHelper.greyColor),
        ),
        // SizedBox(height: 5,),
        Text(test2,
            style: GoogleFonts.oswald(
                fontSize: 44,
                color: ColorsHelper.blackColor,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
