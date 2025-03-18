import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp/project_utils/stat_method.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../project_utils/colors_helper.dart';
import '../widget_helper/widget_helper.dart';
import 'dart:html' as html;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Uint8List? pdfData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    final ByteData data = await rootBundle.load('assets/cv_sp_2025.pdf');
    pdfData = data.buffer.asUint8List();
    setState(() {});
  }

  Future<void> downloadPDF() async {
    // Load the PDF from assets
    final ByteData byteData = await rootBundle.load('assets/cv_sp_2025.pdf');
    final Uint8List buffer = byteData.buffer.asUint8List();

    // Create a Blob from the byte data
    final blob = html.Blob([buffer]);

    // Create an anchor element to trigger the download
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..target = 'blank'
      ..download = 'CV_Suraj_Phadtare_2025.pdf'; // The filename when downloaded

    // Trigger the click event on the anchor element to download the file
    anchor.click();

    // Revoke the object URL after download to clean up resources
    html.Url.revokeObjectUrl(url);
  }

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
                  WidgetHelper.outlinedButtonHelper(() {
                    downloadPDF();
                  }, "Download CV", ColorsHelper.whiteColor),
                  SizedBox(
                    width: 20,
                  ),
                  WidgetHelper.outlinedButtonHelper(() {
                    //
                    GlobalKey key = StaticHelper.navbarKeyList[4];
                    StaticHelper.scrollToSection(key);
                  }, "Contact Info", ColorsHelper.greyColor),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      launchUrlString('https://www.linkedin.com/in/suraj-phadtare/');
                    },
                    child: Image.asset(
                      'assets/linkedin.png',
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      launchUrlString('https://github.com/Suraj2508phadtare');
                    },
                    child: Image.asset(
                      'assets/github.png',
                      height: 50,
                    ),
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
