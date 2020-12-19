import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Text('WeChat'),
  );
}

InputDecoration textFieldDecoration(String hintText) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.deepPurple),
      borderRadius: BorderRadius.all(Radius.circular(20.0))
    ),
    hintStyle: TextStyle(color: Colors.white),
    border: OutlineInputBorder(

      borderSide: BorderSide(color: Colors.deepPurple),
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    hintText: hintText,
  );
}

TextStyle textStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 16,
  );
}

TextStyle mediumTextStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 17,
  );
}
