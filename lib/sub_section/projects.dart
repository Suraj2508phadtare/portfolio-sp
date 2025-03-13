import 'package:flutter/material.dart';
import 'package:sp/project_utils/colors_helper.dart';
import 'package:sp/widget_helper/widget_helper.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WidgetHelper.headerUi('Browse My Recent', 'Projects'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              projectContainer(),
              projectContainer(),
              projectContainer(),
            ],
          )
        ],
      ),
    );
  }

  projectContainer() {
    return Container(
      height: 400,
      width: 300,
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
