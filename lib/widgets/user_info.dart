import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utils/styles.dart';

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
            color: Styles.urlTextColor,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}
