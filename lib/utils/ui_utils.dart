import 'package:flutter/cupertino.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  // var orientation = mediaQuery.orientation;

  // Fixed device width (changes with orientation)
  double deviceWidth = mediaQuery.size.shortestSide;

  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }
  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }
  return DeviceScreenType.Mobile;
  // if (orientation == Orientation.landscape) {
  //   deviceWidth = mediaQuery.size.height;
  // } else {
  //   deviceWidth = mediaQuery.size.width;
  // }
  // if (deviceWidth > 950) {
  //   return DeviceScreenType.Desktop;
  // }

  // if (deviceWidth > 600) {
  //   return DeviceScreenType.Tablet;
  // }
  // return DeviceScreenType.Mobile;
}
