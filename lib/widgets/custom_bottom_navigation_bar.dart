import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utils/asset_path.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Image.asset('$iconPath/home.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('$iconPath/search.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('$iconPath/reel.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('$iconPath/shopping_outline.png'),
            onPressed: () {},
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              IconButton(
                icon: Image.asset('$imagePath/avatar.png', height: 26),
                onPressed: () {},
              ),
              const Icon(
                Icons.brightness_1,
                color: Colors.red,
                size: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
