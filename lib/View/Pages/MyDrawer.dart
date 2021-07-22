import 'package:flagfall/View/Pages/ForeignProfilePage.dart';
import 'package:flagfall/View/Pages/HistoryPage.dart';
import 'package:flagfall/View/Pages/LeaderBoardPage.dart';
import 'package:flutter/material.dart';
import 'MyDivider.dart';
import 'MyDrawerTile.dart';
import 'MySettingsPage.dart';
import 'PreferencePage.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets\\images\\MyDrawerBackground.png'),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                    top: MediaQuery.of(context).size.width / 10),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: MediaQuery.of(context).size.width / 7,
                  child: Icon(
                    Icons.person,
                    color: Colors.purple[700],
                    size: MediaQuery.of(context).size.width / 5,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 40,
                    left: MediaQuery.of(context).size.width / 20,
                    bottom: MediaQuery.of(context).size.width / 80),
                child: Text(
                  "Suliman Awad",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  bottom: MediaQuery.of(context).size.width / 20,
                ),
                child: Text("3589"),
              ),
              MyDivider(1, Colors.black),
              MyDrawerTile(
                Icons.timeline_outlined,
                "Game Annalysis",
                (BuildContext ctx) {
                  // Navigator.of(ctx).pushNamed(HistoryPage.pageName);
                },
              ),
              MyDrawerTile(
                Icons.leaderboard,
                "Leaderboard",
                (BuildContext ctx) {
                  Navigator.of(ctx).pushNamed(LeaderBoardPage.pageName);
                },
              ),
              MyDivider(1, Colors.black),
              MyDrawerTile(
                Icons.person_add_alt_1,
                "Add Friend",
                (BuildContext ctx) {
                  Navigator.of(context).pushNamed(ForeignProfilePage.pageName);
                },
              ),
              MyDrawerTile(
                Icons.settings,
                "Setting",
                (BuildContext ctx) {
                  Navigator.of(ctx).pushNamed(MySettingsPage.pageName);
                },
              ),
              MyDrawerTile(
                Icons.edit,
                "Prefrences",
                (BuildContext ctx) {
                  Navigator.of(ctx).pushNamed(PreferencePage.pageName);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
