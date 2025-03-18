import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp/project_utils/colors_helper.dart';
import 'package:sp/sub_section/experience.dart';
import 'package:sp/sub_section/get_in_touch.dart';
import 'package:sp/sub_section/mobile/experience_mob.dart';
import 'package:sp/sub_section/mobile/home_mob.dart';
import 'package:sp/sub_section/projects.dart';
import 'package:sp/widget_helper/responsive_helper.dart';
import '../project_utils/stat_method.dart';
import '../sub_section/about_screen.dart';
import '../sub_section/home_screen.dart';
import '../sub_section/mobile/about_me_mob.dart';
import '../sub_section/mobile/get_in_touch.dart';
import '../sub_section/mobile/project_mob.dart';
import '../sub_section/tablet/experience_tab.dart';
import '../widget_helper/widget_helper.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  ScrollController scrollSontroller = ScrollController();
  AnimationController? controller;
  Animation<double>? animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);

    animation = Tween<double>(begin: -1.0, end: 0.0)
        .animate(CurvedAnimation(parent: controller!, curve: Curves.easeInOut));
  }

  void toggleDrawer() {
    if (controller!.isDismissed) {
      controller!.forward();
    } else {
      controller!.reverse();
    }
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("Suraj Phadtare",
            style: GoogleFonts.sixtyfour(
                color: ColorsHelper.redAccentColor,
                fontSize: 20,
                fontWeight: FontWeight.w700)),
        actions: [
          if (screenWidth > 970)
            WidgetHelper.headersubSection(() {
              GlobalKey key = StaticHelper.navbarKeyList[0];
              StaticHelper.scrollToSection(key);
            }, "Home"),
          if (screenWidth > 970)
            WidgetHelper.headersubSection(() {
              GlobalKey key = StaticHelper.navbarKeyList[1];
              StaticHelper.scrollToSection(key);
            }, "About"),
          if (screenWidth > 970)
            WidgetHelper.headersubSection(() {
              GlobalKey key = StaticHelper.navbarKeyList[2];
              StaticHelper.scrollToSection(key);
            }, "Experience"),
          if (screenWidth > 970)
            WidgetHelper.headersubSection(() {
              GlobalKey key = StaticHelper.navbarKeyList[3];
              StaticHelper.scrollToSection(key);
            }, "Proejcts"),
          if (screenWidth > 970)
            WidgetHelper.headersubSection(() {
              GlobalKey key = StaticHelper.navbarKeyList[4];
              StaticHelper.scrollToSection(key);
            }, "Contact"),
          if (screenWidth <= 970)
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: toggleDrawer,
            ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollSontroller,
            child: Column(
              children: [
                // Main Screen
                ResponsiveHelper(
                    desktop: HomeScreen(
                      key: StaticHelper.navbarKeyList[0],
                    ),
                    tablet: HomeScreenMob(
                      key: StaticHelper.navbarKeyList[0],
                    ),
                    mobile: HomeScreenMob(
                      key: StaticHelper.navbarKeyList[0],
                    )),
                SizedBox(
                  height: 25,
                ),
                ResponsiveHelper(
                    desktop: AboutScreen(
                      key: StaticHelper.navbarKeyList[1],
                    ),
                    tablet: AboutScreenMob(
                      key: StaticHelper.navbarKeyList[1],
                    ),
                    mobile: AboutScreenMob(
                      key: StaticHelper.navbarKeyList[1],
                    )),
                SizedBox(
                  height: 25,
                ),
                ResponsiveHelper(
                    desktop: ExperiencePage(
                      key: StaticHelper.navbarKeyList[2],
                    ),
                    tablet:
                        ExperienceTabPage(key: StaticHelper.navbarKeyList[2]),
                    mobile:
                        ExperienceMobPage(key: StaticHelper.navbarKeyList[2])),
                SizedBox(
                  height: 25,
                ),

                ResponsiveHelper(
                    desktop: ProjectsScreen(key: StaticHelper.navbarKeyList[3]),
                    tablet:
                        ProjectsMobScreen(key: StaticHelper.navbarKeyList[3]),
                    mobile:
                        ProjectsMobScreen(key: StaticHelper.navbarKeyList[3])),

                SizedBox(
                  height: 25,
                ),
                ResponsiveHelper(
                    desktop: GetInTouch(key: StaticHelper.navbarKeyList[4]),
                    tablet: GetInTouchMob(key: StaticHelper.navbarKeyList[4]),
                    mobile: GetInTouchMob(key: StaticHelper.navbarKeyList[4])),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),

          // animation top to bottom

          AnimatedBuilder(
            animation: controller!,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                    0, animation!.value * MediaQuery.of(context).size.height),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  color: Colors.blue,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      WidgetHelper.headersubSection(() {
                        toggleDrawer();
                        GlobalKey key = StaticHelper.navbarKeyList[0];
                        StaticHelper.scrollToSection(key);
                      }, "Home"),
                      WidgetHelper.headersubSection(() {
                        toggleDrawer();
                        GlobalKey key = StaticHelper.navbarKeyList[1];
                        StaticHelper.scrollToSection(key);
                      }, "About"),
                      WidgetHelper.headersubSection(() {
                        toggleDrawer();
                        GlobalKey key = StaticHelper.navbarKeyList[2];
                        StaticHelper.scrollToSection(key);
                      }, "Experience"),
                      WidgetHelper.headersubSection(() {
                        toggleDrawer();
                        GlobalKey key = StaticHelper.navbarKeyList[3];
                        StaticHelper.scrollToSection(key);
                      }, "Proejcts"),
                      WidgetHelper.headersubSection(() {
                        toggleDrawer();
                        GlobalKey key = StaticHelper.navbarKeyList[4];
                        StaticHelper.scrollToSection(key);
                      }, "Contact"),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
