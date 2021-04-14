import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/widgets/story_item.dart';
import 'package:social_media_profile_screen/widgets/user_info.dart';

import 'widgets/top_bar.dart';
import 'widgets/top_bar_item.dart';

const iconsPath = 'assets/icons/';
const imagePath = 'assets/images/';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Profile Screen',
      theme: ThemeData(
        fontFamily: 'SF Pro Text',
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 44),
            TopBar(),
            Padding(
              padding: const EdgeInsets.all(15).copyWith(top: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Image.asset(
                      'assets/images/avatar.png',
                      width: 86,
                      height: 86,
                    ),
                  ),
                  TopBarItem(title: '210', subtitle: 'post'),
                  TopBarItem(title: '600', subtitle: 'follower'),
                  TopBarItem(title: '500', subtitle: 'following'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15).copyWith(top: 11),
              child: UserInfo(
                name: 'Piero Borgo',
                bio: 'Product designer, founder of Leevia, Lego bricks lover.',
                siteUrl: 'leevia.com',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15).copyWith(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 52,
                        vertical: 6.5,
                      ),
                      primary: Color(0xFF3898F3),
                    ),
                    child: const Text(
                      'Follow',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 52,
                        vertical: 6.5,
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.5,
                          color: Color(0xFFDADADA),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      'Message',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Color(0xFFDADADA),
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(Icons.expand_more),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 18),
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
          ],
        ),
      ),
    );
  }
}
