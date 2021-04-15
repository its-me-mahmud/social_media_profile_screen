import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media Profile Screen',
      theme: ThemeData(
        fontFamily: 'SF Pro Text',
      ),
      home: ProfileScreen(),
    );
  }
}
