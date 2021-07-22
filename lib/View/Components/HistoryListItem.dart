import 'package:flagfall/Models/UserModel.dart';
import 'package:flutter/material.dart';

import 'HistoryPlayerTile.dart';

class HistoryListItem extends StatelessWidget {
  const HistoryListItem({
    Key key,
    @required this.player,
    @required this.opennont,
  }) : super(key: key);

  final UserModel player;
  final UserModel opennont;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.98,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HistoryPlayerTile(player: player),
            Text(
              'VS',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            HistoryPlayerTile(player: opennont),
          ],
        ),
      ),
    );
  }
}
