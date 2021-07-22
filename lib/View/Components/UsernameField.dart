import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //shuold send the data to the provider!!
    // TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
      child: TextField(
        controller: TextEditingController(text: 'Suliman Awad'),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(45),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(45),
          ),
          labelText: 'Username',
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          fillColor: Colors.white70,
          filled: true,
        ),
        cursorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
