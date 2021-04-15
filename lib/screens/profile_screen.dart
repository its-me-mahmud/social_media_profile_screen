import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utils/asset_path.dart';
import 'package:social_media_profile_screen/widgets/custom_app_bar.dart';
import 'package:social_media_profile_screen/widgets/custom_tab_bar.dart';
import 'package:social_media_profile_screen/widgets/story_item.dart';
import 'package:social_media_profile_screen/widgets/top_bar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(),
            TopBar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: ListView(
                  padding: const EdgeInsets.only(left: 15),
                  scrollDirection: Axis.horizontal,
                  children: [
                    StoryItem(imageUrl: 'flower', title: 'Flower'),
                    StoryItem(imageUrl: 'beach', title: 'Beach'),
                    StoryItem(imageUrl: 'sky', title: 'Sky'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: CustomTabBar(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('$iconPath/home.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('$iconPath/search.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('$iconPath/reel.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('$iconPath/shopping_outline.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('$imagePath/avatar.png', width: 28),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
