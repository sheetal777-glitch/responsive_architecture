import 'package:flutter/material.dart';
import '../responsive_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 150,
                  margin: EdgeInsets.all(50),
                  color: Colors.blue,
                  child: ResponsiveBuilder(
                    builder: (context, sizingInfo) {
                      return Text(sizingInfo.toString());
                    },
                  ),
                ),
                Text(sizingInformation.toString()),
              ],
            ),
          ),
        );
      },
    );
  }
}
