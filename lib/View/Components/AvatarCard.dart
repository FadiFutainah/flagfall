import 'package:flutter/material.dart';

class AvatarCard extends StatelessWidget {
  final String userName;
  final int rating;

  const AvatarCard(this.userName, this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.37,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        elevation: 8,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 14),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.09,
                backgroundColor: Theme.of(context).accentColor,
                child: Icon(
                  Icons.person,
                  size: MediaQuery.of(context).size.height * 0.15,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Text(
              userName,
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.height / 30),
            ),
            Text(
              rating.toString(),
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.height / 40),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
