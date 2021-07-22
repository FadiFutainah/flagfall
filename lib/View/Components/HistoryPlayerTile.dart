import 'package:flagfall/Models/UserModel.dart';
import 'package:flutter/material.dart';

class HistoryPlayerTile extends StatelessWidget {
  const HistoryPlayerTile({
    Key key,
    @required this.player,
  }) : super(key: key);

  final UserModel player;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Theme.of(context).accentColor,
                  child: Icon(
                    Icons.person,
                    color: Theme.of(context).primaryColor,
                    size: 50,
                  ),
                ),
              ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(player.name),
              //     Text('${player.rate}'),
              //   ],
              // ),
            ],
          ),
          Text('    ${player.name}'),
          Text('    ${player.rate}'),
          Text('    good moves : 9'),
        ],
      ),
    );
  }
}
