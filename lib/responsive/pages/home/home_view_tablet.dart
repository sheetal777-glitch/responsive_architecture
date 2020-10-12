import 'package:flutter/material.dart';
import 'package:responsive_architecture/widgets/appDrawer/app_drawer.dart';

class HomeViewTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      Expanded(
        child: Container(),
      ),
      AppDrawer()
    ];
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
        body: orientation == Orientation.portrait
            ? Column(children: children)
            : Row(
                children: children.reversed.toList(),
              ));
  }
}
