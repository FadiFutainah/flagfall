import 'package:flutter/material.dart';

class LeaderBoardItem extends StatelessWidget {
  final int id;
  final int rate;
  final String name;
  final int rank;

  const LeaderBoardItem({this.id, this.rate, this.name, this.rank});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: SizedBox(
          child: Container(
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Theme.of(context).accentColor,
              child: Icon(
                Icons.person,
                color: Theme.of(context).primaryColor,
                size: 40,
              ),
            ),
          ),
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 24),
        ),
        subtitle: Text(rate.toString()),
        trailing: Text(
          '#$rank',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
