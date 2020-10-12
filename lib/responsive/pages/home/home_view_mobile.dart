// Contains the widgets that will be used for Mobile Layout of Home.
//potrait and landscape

import 'package:flutter/material.dart';
import 'package:responsive_architecture/widgets/appDrawer/app_drawer.dart';

class HomeMobilePotrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: IconButton(
              icon: Icon(Icons.menu, size: 30),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HomeMobileLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          AppDrawer(),
        ],
      ),
    );
  }
}
