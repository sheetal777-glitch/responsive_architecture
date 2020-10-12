import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'responsive/pages/home/home_page.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      home: HomePage(),
    );
  }
}
