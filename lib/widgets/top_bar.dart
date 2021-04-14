import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 9,
      ),
      child: Row(
        children: [
          const Text(
            'pieroborgo',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: -1,
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/icons/new-video.png',
          ),
          const SizedBox(width: 30.5),
          Image.asset(
            'assets/icons/menu.png',
          ),
        ],
      ),
    );
  }
}
