import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utils/asset_path.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabs = <Tab>[
      Tab(
        icon: Image.asset('$iconPath/grid.png'),
      ),
      Tab(
        icon: Image.asset('$iconPath/reel.png'),
      ),
      Tab(
        icon: Image.asset('$iconPath/igtv.png'),
      ),
      Tab(
        icon: Image.asset('$iconPath/tags.png'),
      ),
    ];

    final posts = <String>[
      '$imagePath/user_post_1.png',
      '$imagePath/user_post_2.png',
      '$imagePath/user_post_3.png',
      '$imagePath/user_post_4.png',
      '$imagePath/user_post_5.png',
      '$imagePath/user_post_6.png',
      '$imagePath/user_post_7.png',
      '$imagePath/user_post_8.png',
      '$imagePath/user_post_9.png',
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Colors.black,
            tabs: tabs,
          ),
          Expanded(
            child: TabBarView(
              children: [
                GridView.count(
                  crossAxisCount: 3,
                  children: posts.map((e) => Image.asset(e)).toList(),
                ),
                Image.asset('$iconPath/reel.png'),
                Image.asset('$iconPath/igtv.png'),
                Image.asset('$iconPath/tags.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
