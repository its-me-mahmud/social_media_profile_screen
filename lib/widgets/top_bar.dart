import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utils/asset_path.dart';
import 'package:social_media_profile_screen/utils/strings.dart';
import 'package:social_media_profile_screen/widgets/top_bar_button.dart';
import 'package:social_media_profile_screen/widgets/top_bar_item.dart';
import 'package:social_media_profile_screen/widgets/user_info.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Image.asset(
                  '$imagePath/avatar.png',
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
          padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 11),
          child: UserInfo(
            name: Strings.fullName,
            bio: Strings.bio,
            siteUrl: Strings.siteUrl,
          ),
        ),
        TopBarButton(),
      ],
    );
  }
}
