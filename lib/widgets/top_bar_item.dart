import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utils/styles.dart';

class TopBarItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const TopBarItem({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.5,
            fontWeight: FontWeight.bold,
            color: Styles.primaryTextColor,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            color: Styles.primaryTextColor,
            letterSpacing: -0.3,
          ),
        ),
      ],
    );
  }
}
