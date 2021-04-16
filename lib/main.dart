import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/screens/profile_screen.dart';
import 'package:social_media_profile_screen/utils/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: ThemeData(
        fontFamily: Strings.fontFamily,
      ),
      home: ProfileScreen(),
    );
  }
}
