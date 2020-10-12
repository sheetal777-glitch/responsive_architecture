import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';

import 'drawer_option_mobile.dart';
import 'drawer_option_tablet.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;

  const DrawerOption({Key key, this.title, this.iconData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        landscape: DrawerOptionMobileLandscape(
          iconData: iconData,
        ),
        potrait: DrawerOptionMobilePotrait(
          title: title,
          iconData: iconData,
        ),
      ),
      tablet: OrientationLayout(
        potrait: DrawerOptionTabletPotrait(title: title, iconData: iconData),
        landscape: DrawerOptionMobilePotrait(
          iconData: iconData,
          title: title,
        ),
      ),
    );
  }
}
