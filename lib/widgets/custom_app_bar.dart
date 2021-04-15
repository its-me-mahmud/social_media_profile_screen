import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utils/asset_path.dart';

class CustomAppBar extends StatelessWidget {
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
          IconButton(
            icon: Image.asset('$iconPath/new_video.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('$iconPath/menu.png'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
