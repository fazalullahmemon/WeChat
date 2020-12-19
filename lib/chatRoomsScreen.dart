import 'package:WeChat/helper/authenticate.dart';
import 'package:WeChat/search.dart';
import 'package:WeChat/signIn.dart';
import 'package:flutter/material.dart';
import './services/auth.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  AuthMethods authMethods = new AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              authMethods.signOut();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Authenticate()));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.exit_to_app)),
          )
        ],
        title: Text('Inbox'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push((context), MaterialPageRoute(builder: (context) => SearchScreen(),));
        },
        child: Icon(Icons.search),

      ),
    );
  }
}
