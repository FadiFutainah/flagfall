import 'package:flagfall/View/Components/Background.dart';
import 'package:flagfall/View/Components/PasswordField.dart';
import 'package:flagfall/View/Components/UsernameField.dart';
import 'package:flagfall/themes.dart';
import 'package:flutter/material.dart';

import 'MyHomePage.dart';

class SignInPage extends StatelessWidget {
  static const String pageName = 'SignInPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Scaffold(
        body: Stack(
          children: [
            Background(
              image: 'assets\\images\\background.jpg',
            ),
            Column(
              children: [
                Text(
                  'Log in',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 60, //should be responsive!!
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Player name',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 24, //should be responsive!!
                      ),
                    ),
                    UsernameField(),
                    Text(
                      'Player password',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 24, //should be responsive!!
                      ),
                    ),
                    PasswordField(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Center(
                            child: Text(
                              'log in',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        style: ButtonStyle(
                          backgroundColor: MyColor(color: Colors.purple),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .popAndPushNamed(MyHomePage.pageName);
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    ElevatedButton(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Center(
                          child: Text(
                            'sign in',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          backgroundColor: MyColor(color: Colors.purple)),
                      onPressed: () {
                        Navigator.of(context)
                            .popAndPushNamed(MyHomePage.pageName);
                      },
                    ),
                  ],
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ],
        ),
      ),
    );
  }
}
