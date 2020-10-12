import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/widgets/appDrawer/app_drawer_mobile.dart';
import 'package:responsive_architecture/widgets/drawerOption/drawer_option.dart';

import 'app_drawer_tablet.dart';

class AppDrawer extends StatelessWidget {
  static List<Widget> getDrawerOptions() {
    return [
      DrawerOption(title: "Images", iconData: Icons.image),
      DrawerOption(title: "Report", iconData: Icons.photo_filter),
      DrawerOption(title: "Incidents", iconData: Icons.message),
      DrawerOption(title: "Settings", iconData: Icons.settings),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        potrait: AppDrawerTabletPotrait(),
        landscape: AppDrawerTabletLandscape(),
      ),
    );
  }
}
