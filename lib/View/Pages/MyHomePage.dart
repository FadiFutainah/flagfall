import 'package:flutter/material.dart';
import 'MyBottomAppBar.dart';
import 'MyDrawer.dart';
import 'MyHomePageComponent.dart';

class MyHomePage extends StatelessWidget {
  static const String pageName = 'MyHomePage';
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        elevation: MediaQuery.of(context).size.width / 150,
        backgroundColor: Colors.purple[700],
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyHomePageComponent(
              '',
              'assets\\images\\HomePageComponentTournament.png',
            ),
            MyHomePageComponent(
              '',
              'assets\\images\\HomePageComponentChallenge.png',
            ),
            MyHomePageComponent(
              '',
              'assets\\images\\HomePageComponentSearch.png',
            ),
            MyHomePageComponent(
              '',
              'assets\\images\\HomePageComponentBot.png',
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(4),
    );
    return scaffold;
  }
}
