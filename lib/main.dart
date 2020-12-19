import 'package:WeChat/helper/authenticate.dart';
import 'package:WeChat/signUp.dart';
import 'package:flutter/material.dart';
import 'signIn.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'WeChat',
      theme: ThemeData(
        // scaffoldBackgroundColor: ,
        primaryColor: Colors.deepPurple,
        // primarySwatch: Colors.purple,
        backgroundColor: Colors.grey,
        scaffoldBackgroundColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Authenticate(),
      
    );
  }
}

