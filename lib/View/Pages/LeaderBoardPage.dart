import 'package:flagfall/Models/UserModel.dart';
import 'package:flagfall/View/Components/LeaderBoardItem.dart';
import 'package:flutter/material.dart';

class LeaderBoardPage extends StatelessWidget {
  static const String pageName = 'LeaderBoardPage';
  final List<UserModel> leaders = [
    UserModel(
      id: 1,
      name: 'Suliman Awad',
      rate: 3589,
    ),
    UserModel(
      id: 1,
      name: 'Fadi Futainah',
      rate: 2050,
    ),
    UserModel(
      id: 1,
      name: 'Moaaz Alhalabi',
      rate: 2000,
    ),
    UserModel(
      id: 1,
      name: 'Dani Alshpah',
      rate: 100,
    ),
    UserModel(
      id: 1,
      name: 'user1',
      rate: 99,
    ),
    UserModel(
      id: 1,
      name: 'user2',
      rate: 98,
    ),
    UserModel(
      id: 1,
      name: 'User3',
      rate: 97,
    ),
    UserModel(
      id: 1,
      name: 'User4',
      rate: 96,
    ),
    UserModel(
      id: 1,
      name: 'User5',
      rate: 95,
    ),
    UserModel(
      id: 1,
      name: 'User6',
      rate: 94,
    ),
    UserModel(
      id: 1,
      name: 'User7',
      rate: 93,
    ),
    UserModel(
      id: 1,
      name: 'User8',
      rate: 92,
    ),
    UserModel(
      id: 1,
      name: 'User9',
      rate: 91,
    ),
    UserModel(
      id: 1,
      name: 'User10',
      rate: 90,
    ),
    UserModel(
      id: 1,
      name: 'User11',
      rate: 89,
    ),
  ]; //replace by provider

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Leaderboard'),
      ),
      body: ListView.builder(
        itemCount: leaders.length,
        itemBuilder: (BuildContext context, int index) => LeaderBoardItem(
          rank: index + 1,
          id: leaders[index].id,
          name: leaders[index].name,
          rate: leaders[index].rate,
        ),
      ),
    );
  }
}
