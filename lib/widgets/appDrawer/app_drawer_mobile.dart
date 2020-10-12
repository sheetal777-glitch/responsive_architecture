import 'package:flutter/material.dart';
import 'package:responsive_architecture/widgets/appDrawer/app_drawer.dart';

class AppDrawerMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
      width: orientation == Orientation.portrait ? 250 : 100,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 12, color: Colors.black12)]),
      child: Column(
        children: AppDrawer.getDrawerOptions(),
      ),
    );
  }
}
