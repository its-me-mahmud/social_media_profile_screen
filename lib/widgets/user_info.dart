import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String name;
  final String bio;
  final String siteUrl;

  const UserInfo({
    required this.name,
    required this.bio,
    required this.siteUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: -0.5,
          ),
        ),
        Text(bio, style: TextStyle(letterSpacing: -0.5)),
        Text(
          siteUrl,
          style: TextStyle(
            color: Color(0xFF10467D),
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}
