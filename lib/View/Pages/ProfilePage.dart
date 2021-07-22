import 'package:flagfall/View/Components/AppBarContainer.dart';
import 'package:flagfall/View/Components/AvatarCard.dart';
import 'package:flagfall/View/Components/ProfileAboutDialog.dart';
import 'package:flagfall/View/Pages/MyBottomAppBar.dart';
import 'package:flagfall/View/Pages/MyDrawer.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const String pageName = 'ProfilePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: MyDrawer(),
      body: Stack(
        children: [
          AppBarContainer(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AvatarCard('Suliman Awad', 3589),
                ProfileAboutDialog(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.history_sharp,
                            color: Theme.of(context).primaryColor,
                            size: 50,
                          ),
                        ),
                        Text(
                          'History',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomAppBar(1),
    );
  }
}
