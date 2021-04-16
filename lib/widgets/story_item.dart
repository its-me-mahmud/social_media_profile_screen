import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utils/asset_path.dart';
import 'package:social_media_profile_screen/utils/styles.dart';

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const StoryItem({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              border: Border.all(color: Styles.storyBorderColor),
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              '$imagePath/story_$imageUrl.png',
              width: 57,
              height: 57,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.5,
            ),
          ),
        ],
      ),
    );
  }
}
