import 'package:flutter/material.dart';

final ThemeData purpleTheme = ThemeData(
  primaryColor: Color(0xff662D91),
  accentColor: Color(0x66662D91),
  fontFamily: 'Lato',
);

class MyTheme {
  static var myThemes = [];

  List<Color> color = new List.filled(5, null);

  List<Color> fontColor = new List.filled(5, null);

  BottomNavigationBarTheme bottomNavigationBar;
  AnalysisTheme analysis;
  ChatTheme chat;
  ChatsTheme chats;
  CommunityTheme community;
  DrawerTheme drawer;
  ForeignProfileTheme foreignProfile;
  GameTheme game;
  GamesTheme games;
  HistoryTheme history;
  LeaderBoardTheme leaderBoard;
  LobbiesTheme lobbies;
  LobbyTheme lobby;
  LogInTheme logIn;
  ProfileTheme profile;
  SignUpTheme signUp;
  StoreTheme store;
  TournamentTheme tournament;

  Color getColor(int n) {
    return color[n];
  }

  Color getFontColor(int n) {
    return fontColor[n];
  }

  LinearGradient getGradientColor(ComponentColor cc) {
    Color l = color[cc.l];
    Color r = color[cc.r];
    return LinearGradient(
      colors: [l, r],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
  }

  // MyTheme({
  //   this.analysis,
  //   this.bottomNavigationBar,
  //   this.c1,
  //   this.c2,
  //   this.c3,
  //   this.c4,
  //   this.c5,
  //   this.chat,
  //   this.chats,
  //   this.community,
  //   this.drawer,
  //   this.fontC1,
  //   this.fontC2,
  //   this.fontC3,
  //   this.fontC4,
  //   this.fontC5,
  //   this.foreignProfile,
  //   this.game,
  //   this.games,
  //   this.history,
  //   this.leaderBoard,
  //   this.lobbies,
  //   this.lobby,
  //   this.logIn,
  //   this.onLineGame,
  //   this.profile,
  //   this.signUp,
  //   this.splash,
  //   this.store,
  //   this.tournament,
  // });

  static MyTheme myFlagFallTheme() {
    MyTheme temp = MyTheme();

    temp.color[0] = Color(0xff662d91); //purple
    temp.color[1] = Color(0xff63adf2); //cyan
    temp.color[2] = Color(0xffe3c0d3); //pink
    temp.color[3] = Color(0xffecfee8); //wihte
    temp.color[4] = Color(0xff727d71); //black

    temp.fontColor[0] = Color(0xffecfee8); //wihte
    temp.fontColor[1] = Color(0xffecfee8); //wihte
    temp.fontColor[2] = Color(0xffecfee8); //wihte
    temp.fontColor[3] = Colors.black;
    temp.fontColor[4] = Color(0xffecfee8); //wihte

    temp.analysis.bottomBar.l = 3;
    temp.analysis.bottomBar.r = 1;
    temp.analysis.bottomBarIcon = 4;
    temp.analysis.topBar.l = 1;
    temp.analysis.topBar.r = 2;
    temp.analysis.topBarIcon = 4;

    temp.bottomNavigationBar.backGround.l = 4;
    temp.bottomNavigationBar.backGround.r = 4;
    temp.bottomNavigationBar.bressedIcon = 4;
    temp.bottomNavigationBar.bressedIconBackGround = 1;
    temp.bottomNavigationBar.unBressedIcon = 5;
    temp.bottomNavigationBar.unBressedIconBackGround = 1;

    temp.chat.bottomBar.l = 3;
    temp.chat.bottomBar.r = 1;
    temp.chat.bottomBarIcon = 1;
    temp.chat.bottomBarPlace = 4;
    temp.chat.myMsg.l = 1;
    temp.chat.myMsg.r = 4;
    temp.chat.otherMsg.l = 4;
    temp.chat.otherMsg.r = 1;
    temp.chat.topBar.l = 3;
    temp.chat.topBar.r = 1;
    temp.chat.topBarIcon = 4;

    temp.chats.component.l = 4;
    temp.chats.component.r = 4;
    temp.chats.componentIcon = 5;
    temp.chats.topBar.l = 3;
    temp.chats.topBar.r = 1;
    temp.chats.topBarIcon = 4;

    temp.community.component.l = 4;
    temp.community.component.r = 2;
    temp.community.topBar.l = 1;
    temp.community.topBar.r = 2;
    temp.community.topBarIcon = 4;

    temp.drawer.icon = 5;

    temp.foreignProfile.bottomBar.l = 4;
    temp.foreignProfile.bottomBar.r = 4;
    temp.foreignProfile.chatButton.l = 4;
    temp.foreignProfile.chatButton.r = 1;
    temp.foreignProfile.followButton.l = 3;
    temp.foreignProfile.followButton.r = 1;
    temp.foreignProfile.topBar.l = 1;
    temp.foreignProfile.topBar.r = 3;
    temp.foreignProfile.topBarIcon = 4;

    temp.game.topBar.l = 1;
    temp.game.topBar.r = 2;
    temp.game.bottomBar.l = 1;
    temp.game.bottomBar.r = 2;
    temp.game.bottomBarIcon = 4;
    temp.game.topBarIcon = 4;

    temp.games.topBar.l = 3;
    temp.games.topBar.r = 1;
    temp.games.topBarIcon = 4;

    temp.history.component.l = 4;
    temp.history.component.r = 2;
    temp.history.topBar.l = 3;
    temp.history.topBar.r = 1;
    temp.history.topBarIcon = 4;

    temp.leaderBoard.component.l = 4;
    temp.leaderBoard.component.r = 4;
    temp.leaderBoard.topBar.l = 3;
    temp.leaderBoard.topBar.r = 1;
    temp.leaderBoard.topBarIcon = 4;

    temp.lobbies.component.l = 4;
    temp.lobbies.component.r = 1;
    temp.lobbies.createBotton.l = 2;
    temp.lobbies.createBotton.r = 1;
    temp.lobbies.topBar.l = 3;
    temp.lobbies.topBar.r = 1;
    temp.lobbies.topBarIcon = 4;

    temp.lobby.component.l = 4;
    temp.lobby.component.r = 4;
    temp.lobby.outIcon = 1;
    temp.lobby.topBar.l = 3;
    temp.lobby.topBar.r = 1;
    temp.lobby.topBarIcon = 4;

    temp.logIn.logInBotton.l = 4;
    temp.logIn.logInBotton.r = 1;
    temp.logIn.signUpBotton.l = 4;
    temp.logIn.signUpBotton.r = 2;
    temp.logIn.textFieldIcon = 1;

    temp.profile.topBar.l = 1;
    temp.profile.topBar.r = 2;
    temp.profile.topBarIcon = 4;

    temp.signUp.logInBotton.l = 4;
    temp.signUp.logInBotton.r = 2;
    temp.signUp.signUpBotton.l = 4;
    temp.signUp.signUpBotton.r = 1;

    temp.store.firstRow.l = 4;
    temp.store.firstRow.r = 4;
    temp.store.secondRow.l = 4;
    temp.store.secondRow.r = 4;
    temp.store.thirdRow.l = 4;
    temp.store.thirdRow.r = 4;
    temp.store.topBar.l = 1;
    temp.store.topBar.r = 2;
    temp.store.topBarIcon = 4;

    temp.tournament.readyBotton.l = 3;
    temp.tournament.readyBotton.r = 1;
    temp.tournament.secondComponentLines = 1;
    temp.tournament.topBar.l = 1;
    temp.tournament.topBar.r = 4;
    temp.tournament.topBarIcon = 4;

    return temp;
  }

  myDefaultTheme() {
    MyTheme temp = MyTheme();

    temp.color[0] = Color(0xff1a1a1a); //black
    temp.color[1] = Color(0xff8b2635); //red
    temp.color[2] = Color(0xff666666); //grey
    temp.color[3] = Color(0xffcccccc); //wihte
    temp.color[4] = Color(0xff042a2b); //green

    temp.fontColor[0] = Color(0xffecfee8);
    temp.fontColor[1] = Color(0xffecfee8);
    temp.fontColor[2] = Color(0xffecfee8);
    temp.fontColor[3] = Colors.black;
    temp.fontColor[4] = Color(0xffecfee8);

    temp.analysis.bottomBar.l = 3;
    temp.analysis.bottomBar.r = 1;
    temp.analysis.bottomBarIcon = 4;
    temp.analysis.topBar.l = 1;
    temp.analysis.topBar.r = 2;
    temp.analysis.topBarIcon = 4;

    temp.bottomNavigationBar.backGround.l = 4;
    temp.bottomNavigationBar.backGround.r = 4;
    temp.bottomNavigationBar.bressedIcon = 4;
    temp.bottomNavigationBar.bressedIconBackGround = 1;
    temp.bottomNavigationBar.unBressedIcon = 5;
    temp.bottomNavigationBar.unBressedIconBackGround = 1;

    temp.chat.bottomBar.l = 3;
    temp.chat.bottomBar.r = 1;
    temp.chat.bottomBarIcon = 1;
    temp.chat.bottomBarPlace = 4;
    temp.chat.myMsg.l = 1;
    temp.chat.myMsg.r = 4;
    temp.chat.otherMsg.l = 4;
    temp.chat.otherMsg.r = 1;
    temp.chat.topBar.l = 3;
    temp.chat.topBar.r = 1;
    temp.chat.topBarIcon = 4;

    temp.chats.component.l = 4;
    temp.chats.component.r = 4;
    temp.chats.componentIcon = 5;
    temp.chats.topBar.l = 3;
    temp.chats.topBar.r = 1;
    temp.chats.topBarIcon = 4;

    temp.community.component.l = 4;
    temp.community.component.r = 2;
    temp.community.topBar.l = 1;
    temp.community.topBar.r = 2;
    temp.community.topBarIcon = 4;

    temp.drawer.icon = 5;

    temp.foreignProfile.bottomBar.l = 4;
    temp.foreignProfile.bottomBar.r = 4;
    temp.foreignProfile.chatButton.l = 4;
    temp.foreignProfile.chatButton.r = 1;
    temp.foreignProfile.followButton.l = 3;
    temp.foreignProfile.followButton.r = 1;
    temp.foreignProfile.topBar.l = 1;
    temp.foreignProfile.topBar.r = 3;
    temp.foreignProfile.topBarIcon = 4;

    temp.game.topBar.l = 1;
    temp.game.topBar.r = 2;
    temp.game.bottomBar.l = 1;
    temp.game.bottomBar.r = 2;
    temp.game.bottomBarIcon = 4;
    temp.game.topBarIcon = 4;

    temp.games.topBar.l = 3;
    temp.games.topBar.r = 1;
    temp.games.topBarIcon = 4;

    temp.history.component.l = 4;
    temp.history.component.r = 2;
    temp.history.topBar.l = 3;
    temp.history.topBar.r = 1;
    temp.history.topBarIcon = 4;

    temp.leaderBoard.component.l = 4;
    temp.leaderBoard.component.r = 4;
    temp.leaderBoard.topBar.l = 3;
    temp.leaderBoard.topBar.r = 1;
    temp.leaderBoard.topBarIcon = 4;

    temp.lobbies.component.l = 4;
    temp.lobbies.component.r = 1;
    temp.lobbies.createBotton.l = 2;
    temp.lobbies.createBotton.r = 1;
    temp.lobbies.topBar.l = 3;
    temp.lobbies.topBar.r = 1;
    temp.lobbies.topBarIcon = 4;

    temp.lobby.component.l = 4;
    temp.lobby.component.r = 4;
    temp.lobby.outIcon = 1;
    temp.lobby.topBar.l = 3;
    temp.lobby.topBar.r = 1;
    temp.lobby.topBarIcon = 4;

    temp.logIn.logInBotton.l = 4;
    temp.logIn.logInBotton.r = 1;
    temp.logIn.signUpBotton.l = 4;
    temp.logIn.signUpBotton.r = 2;
    temp.logIn.textFieldIcon = 1;

    temp.profile.topBar.l = 1;
    temp.profile.topBar.r = 2;
    temp.profile.topBarIcon = 4;

    temp.signUp.logInBotton.l = 4;
    temp.signUp.logInBotton.r = 2;
    temp.signUp.signUpBotton.l = 4;
    temp.signUp.signUpBotton.r = 1;

    temp.store.firstRow.l = 4;
    temp.store.firstRow.r = 4;
    temp.store.secondRow.l = 4;
    temp.store.secondRow.r = 4;
    temp.store.thirdRow.l = 4;
    temp.store.thirdRow.r = 4;
    temp.store.topBar.l = 1;
    temp.store.topBar.r = 2;
    temp.store.topBarIcon = 4;

    temp.tournament.readyBotton.l = 3;
    temp.tournament.readyBotton.r = 1;
    temp.tournament.secondComponentLines = 1;
    temp.tournament.topBar.l = 1;
    temp.tournament.topBar.r = 4;
    temp.tournament.topBarIcon = 4;

    return temp;
  }
}

class MyColor extends MaterialStateColor {
  final Color color;
  const MyColor({@required this.color}) : super(0);

  @override
  Color resolve(Set<MaterialState> states) {
    // if (states.contains(MaterialState.pressed)) {
    //   return color;
    // }
    return color;
  }
}

class ComponentColor {
  int l;
  int r;
}

class BottomNavigationBarTheme {
  ComponentColor backGround;
  int bressedIcon;
  int unBressedIcon;
  int bressedIconBackGround;
  int unBressedIconBackGround;
}

class AnalysisTheme {
  ComponentColor topBar;
  int topBarIcon;

  ComponentColor bottomBar;
  int bottomBarIcon;
}

class ChatTheme {
  ComponentColor topBar;
  int topBarIcon;

  ComponentColor myMsg;
  ComponentColor otherMsg;

  ComponentColor bottomBar;
  int bottomBarIcon;
  int bottomBarPlace;
}

class ChatsTheme {
  ComponentColor topBar;
  int topBarIcon;
  ComponentColor component;
  int componentIcon;
}

class CommunityTheme {
  ComponentColor topBar;
  int topBarIcon;

  ComponentColor component;
}

class DrawerTheme {
  int icon;
}

class ForeignProfileTheme {
  ComponentColor topBar;
  int topBarIcon;

  ComponentColor followButton;
  ComponentColor chatButton;

  ComponentColor bottomBar;
}

class GameTheme {
  ComponentColor topBar;
  int topBarIcon;

  ComponentColor bottomBar;
  int bottomBarIcon;
}

class GamesTheme {
  ComponentColor topBar;
  int topBarIcon;
}

class HistoryTheme {
  ComponentColor topBar;
  int topBarIcon;

  ComponentColor component;
}

class LeaderBoardTheme {
  ComponentColor topBar;
  int topBarIcon;

  ComponentColor component;
}

class LobbiesTheme {
  ComponentColor topBar;
  int topBarIcon;

  ComponentColor component;

  ComponentColor createBotton;
}

class LobbyTheme {
  ComponentColor topBar;
  int topBarIcon;

  ComponentColor component;

  int outIcon;
}

class LogInTheme {
  int textFieldIcon;

  ComponentColor logInBotton;

  ComponentColor signUpBotton;
}

class ProfileTheme {
  ComponentColor topBar;
  int topBarIcon;
}

class SignUpTheme {
  ComponentColor logInBotton;

  ComponentColor signUpBotton;
}

class StoreTheme {
  ComponentColor topBar;
  int topBarIcon;

  ComponentColor firstRow;
  ComponentColor secondRow;
  ComponentColor thirdRow;
}

class TournamentTheme {
  ComponentColor topBar;
  int topBarIcon;

  int secondComponentLines;

  ComponentColor readyBotton;
}
