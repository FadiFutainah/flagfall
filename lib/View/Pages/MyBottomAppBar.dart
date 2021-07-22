import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flagfall/View/Pages/MyHomePage.dart';
import 'package:flagfall/View/Pages/ProfilePage.dart';
import 'package:flutter/material.dart';

import 'HistoryPage.dart';

//done by noob programmer
//needs respoonsive
//line 24 ..etc

class MyBottomAppBar extends StatelessWidget {
  final int screenNum;

  const MyBottomAppBar(this.screenNum);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor:
                (screenNum == 1) ? Colors.purple[700] : Colors.white,
            radius: MediaQuery.of(context).size.width / 12,
            child: GestureDetector(
              child: Icon(
                EvaIcons.personOutline,
                color: (screenNum == 1) ? Colors.grey[200] : Colors.grey[600],
                size: MediaQuery.of(context).size.width / 8,
              ),
              onTap: (screenNum == 1)
                  ? () {}
                  : () {
                      Navigator.of(context)
                          .pushReplacementNamed(ProfilePage.pageName);
                    },
            ),
          ),
          CircleAvatar(
            backgroundColor:
                (screenNum == 2) ? Colors.purple[700] : Colors.white,
            radius: MediaQuery.of(context).size.width / 12,
            child: GestureDetector(
              child: Icon(
                EvaIcons.messageCircleOutline,
                color: (screenNum == 2) ? Colors.grey[200] : Colors.grey[600],
                size: MediaQuery.of(context).size.width / 8,
              ),
              onTap: (screenNum == 2)
                  ? () {}
                  : () {
                      // Navigator.of(context).pushReplacementNamed(HistoryPage.pageName);
                    },
            ),
          ),
          CircleAvatar(
            backgroundColor:
                (screenNum == 3) ? Colors.purple[700] : Colors.white,
            radius: MediaQuery.of(context).size.width / 12,
            child: GestureDetector(
              child: Icon(
                EvaIcons.globe2Outline,
                color: (screenNum == 3) ? Colors.grey[200] : Colors.grey[600],
                size: MediaQuery.of(context).size.width / 8,
              ),
              onTap: (screenNum == 3)
                  ? () {}
                  : () {
                      Navigator.of(context)
                          .pushReplacementNamed(HistoryPage.pageName);
                    },
            ),
          ),
          CircleAvatar(
            backgroundColor:
                (screenNum == 4) ? Colors.purple[700] : Colors.white,
            radius: MediaQuery.of(context).size.width / 12,
            child: GestureDetector(
              child: Icon(
                EvaIcons.gridOutline,
                color: (screenNum == 4) ? Colors.grey[200] : Colors.grey[600],
                size: MediaQuery.of(context).size.width / 8,
              ),
              onTap: (screenNum == 4)
                  ? () {}
                  : () {
                      Navigator.of(context)
                          .pushReplacementNamed(MyHomePage.pageName);
                    },
            ),
          ),
        ],
      ),
    );
  }
}
