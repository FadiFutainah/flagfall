import 'package:flutter/material.dart';

import 'MyDrawerTile.dart';

class MySettingsPage extends StatelessWidget {
  static const String pageName = 'SettingsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyDrawerTile(Icons.person, 'Account', () {}),
            MyDrawerTile(Icons.grid_view, 'Game', () {}),
            MyDrawerTile(Icons.public, 'Online', () {}),
            MyDrawerTile(
              Icons.info,
              'About',
              (BuildContext ctx) {
                showAboutDialog(
                  context: ctx,
                  // applicationIcon: Image.asset(
                  //   'assets\\images\\logo.png',
                  //   fit: BoxFit.fill,
                  // ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
