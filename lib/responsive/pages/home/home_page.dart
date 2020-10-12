import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import '../../responsive_builder.dart';
import 'home_view_mobile.dart';
import 'home_view_tablet.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayout(
            potrait: HomeMobilePotrait(),
            landscape: HomeMobileLandscape(),
          ),
          tablet: HomeViewTablet(),
        );
      },
    );
  }
}
