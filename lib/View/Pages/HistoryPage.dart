import 'package:flagfall/Models/UserModel.dart';
import 'package:flagfall/View/Components/HistoryListItem.dart';
import 'package:flagfall/View/Pages/MyBottomAppBar.dart';
import 'package:flutter/material.dart';

import 'MyDrawer.dart';

/*
don't code her
Ultra trash from the team designer*
*/

class HistoryPage extends StatelessWidget {
  final UserModel player = UserModel(
    id: 1,
    name: 'player name',
    rate: 1782,
  );
  static const String pageName = 'HistoryPage';
  final List<UserModel> players = [
    UserModel(id: 2, name: 'opponent1', rate: 2000),
    UserModel(id: 2, name: 'opponent2', rate: 1034),
    UserModel(id: 2, name: 'opponent3', rate: 1822),
    UserModel(id: 2, name: 'opponent4', rate: 1546),
    UserModel(id: 2, name: 'opponent5', rate: 2100),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize:
      //       Size.fromHeight(MediaQuery.of(context).size.height * 0.25),
      // child: AppBar(
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.vertical(
      //       bottom: Radius.circular(30),
      //     ),
      //   ),
      // ),
      // ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView.builder(
          itemCount: players.length,
          itemBuilder: (context, index) =>
              HistoryListItem(player: player, opennont: players[index])),
      backgroundColor: Colors.grey[400],
      bottomNavigationBar: MyBottomAppBar(3),
      // bottomNavigationBar: SizedBox(
      //   height: MediaQuery.of(context).size.height * 0.07,
      //   child: BottomAppBar(
      //     elevation: 5,
      //     child: Row(
      //       //Icons need to change the icons
      //       children: [
      //         IconButton(
      //           icon: Icon(
      //             Icons.person_outlined,
      //           ),
      //           onPressed: () {},
      //         ),
      //         IconButton(
      //           icon: Icon(
      //             Icons.mail,
      //           ),
      //           onPressed: () {},
      //         ),
      //         IconButton(
      //           icon: Icon(
      //             Icons.public,
      //           ),
      //           onPressed: () {},
      //         ),
      //         IconButton(
      //           icon: Icon(
      //             Icons.apps_rounded,
      //           ),
      //           onPressed: () {},
      //         )
      //       ],
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     ),
      // ),
      // ),
    );
  }
}
