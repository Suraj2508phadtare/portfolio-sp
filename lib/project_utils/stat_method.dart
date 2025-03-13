import 'package:flutter/material.dart';

class StaticHelper{


   static List<GlobalKey> navbarKeyList  = List.generate(5, (index) => GlobalKey());

   static scrollToSection(GlobalKey sendKey) {
    // GlobalKey key = navbarKeys[index];
    Scrollable.ensureVisible(sendKey.currentContext!,
        duration: Duration(milliseconds: 800), curve: Curves.easeInOut);
  }
}