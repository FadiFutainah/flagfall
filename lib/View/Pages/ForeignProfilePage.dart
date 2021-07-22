import 'package:flagfall/View/Components/AppBarContainer.dart';
import 'package:flagfall/View/Components/AvatarCard.dart';
import 'package:flagfall/View/Components/ProfileAboutDialog.dart';
import 'package:flagfall/themes.dart';
import 'package:flutter/material.dart';

class ForeignProfilePage extends StatelessWidget {
  static const String pageName = 'ForignProfilePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Stack(
        children: [
          AppBarContainer(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AvatarCard('Fadi Futainah', 2050),
                ProfileAboutDialog(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.8,
        child: BottomAppBar(
          elevation: 5,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Add Friend',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'Lato',
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MyColor(color: Theme.of(context).primaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
