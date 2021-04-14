import 'package:flutter/material.dart';

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
            color: Color(0xff252525),
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            color: Color(0xff252525),
            letterSpacing: -0.3,
          ),
        ),
      ],
    );
  }
}
