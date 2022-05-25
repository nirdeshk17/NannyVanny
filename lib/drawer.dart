import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:nannyvanny/home.dart';
import 'package:nannyvanny/menuscreen.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(menuScreen:menuscreen(), mainScreen:home(),angle:0,menuBackgroundColor: Colors.white,openCurve: Curves.fastOutSlowIn,closeCurve:Curves.bounceIn,);
  }
}
