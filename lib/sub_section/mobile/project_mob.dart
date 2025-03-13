import 'package:flutter/material.dart';
import 'package:sp/project_utils/colors_helper.dart';
import 'package:sp/widget_helper/widget_helper.dart';

class ProjectsMobScreen extends StatelessWidget {
  const ProjectsMobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthScreen-widthScreen*0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WidgetHelper.headerUi('Browse My Recent', 'Projects'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              projectContainer(),
              SizedBox(height: 10,),
              projectContainer(),
              SizedBox(height: 10,),
              projectContainer(),
            ],
          )
        ],
      ),
    );
  }

  projectContainer() {
    return Container(
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: ColorsHelper.blackColor),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        'Project',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    );
  }
}
