import 'package:flagfall/View/Pages/ForeignProfilePage.dart';
import 'package:flagfall/View/Pages/HistoryPage.dart';
import 'package:flagfall/View/Pages/LeaderBoardPage.dart';
import 'package:flagfall/View/Pages/MyHomePage.dart';
import 'package:flagfall/View/Pages/MySettingsPage.dart';
import 'package:flagfall/View/Pages/ProfilePage.dart';
import 'package:flagfall/themes.dart';
import 'package:flutter/material.dart';

import 'View/Pages/PreferencePage.dart';
import 'View/Pages/SignInPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlagFall',
      home: SignInPage(),
      debugShowCheckedModeBanner: false,
      theme: purpleTheme,
      routes: {
        PreferencePage.pageName: (BuildContext context) => PreferencePage(),
        MySettingsPage.pageName: (BuildContext context) => MySettingsPage(),
        LeaderBoardPage.pageName: (BuildContext context) => LeaderBoardPage(),
        MyHomePage.pageName: (BuildContext context) => MyHomePage(),
        ProfilePage.pageName: (BuildContext context) => ProfilePage(),
        ForeignProfilePage.pageName: (BuildContext context) =>
            ForeignProfilePage(),
        HistoryPage.pageName: (BuildContext context) => HistoryPage(),
      },
    );
  }
}
