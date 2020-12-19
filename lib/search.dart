import 'package:WeChat/widgets/widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
        child: Column(
          children: [
            Row(children: [
              // Expanded(child: TextField()),
              Icon(Icons.search),
              // Image.asset("assets/images/loupe.png")
            ],)
          ],
        ),
      ),
    );
  }
}
