import 'package:flutter/material.dart';

class MyHomePageComponent extends StatelessWidget {
  final String txt;
  final String img;

  MyHomePageComponent(this.txt, this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(img),
        ),
      ),
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width / 1.15,
    );
  }
}
