import 'package:flutter/material.dart';

import 'MyHomePageComponent.dart';

class PreferencePage extends StatelessWidget {
  static const String pageName = 'PreferencePage';

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
        title: Text('Choose your Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4.6,
              width: MediaQuery.of(context).size.width / 1.1,
              child: MyHomePageComponent(
                '',
                'assets\\images\\DefaultTheme.png',
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4.6,
              width: MediaQuery.of(context).size.width / 1.1,
              child: MyHomePageComponent(
                '',
                'assets\\images\\FlagfallTheme.png',
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4.6,
              width: MediaQuery.of(context).size.width / 1.1,
              child: MyHomePageComponent(
                '',
                'assets\\images\\ClassicTheme.png',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
          ],
        ),
      ),
    );
  }
}
