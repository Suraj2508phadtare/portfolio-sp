import 'package:flutter/material.dart';

class ResponsiveHelper extends StatelessWidget {
  const ResponsiveHelper({super.key, required this.desktop, required this.tablet, required this.mobile});

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth >= 970) {
        return desktop;
      }else if(constraints.maxWidth < 970 && constraints.maxWidth >= 500) {
        return tablet;
      }else {
        return mobile;
      }
    },);
  }

  // String isPlatfromType() {
  //  LayoutBuilder(builder: (context, constraints) {
  //   if(constraints.maxWidth >= 970) {
  //       return ;
  //     }else if(constraints.maxWidth < 970 && constraints.maxWidth >= 500) {
  //       return tablet;
  //     }else {
  //       return mobile;
  //     }
  //  });
  // }
}