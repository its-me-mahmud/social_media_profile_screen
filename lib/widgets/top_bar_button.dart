import 'package:flutter/material.dart';
import 'package:social_media_profile_screen/utils/strings.dart';
import 'package:social_media_profile_screen/utils/styles.dart';

class TopBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15).copyWith(bottom: 0),
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
              primary: Styles.primaryColor,
            ),
            child: const Text(
              Strings.followButton,
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
                  color: Styles.borderColor,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Text(
              Strings.messageButton,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: Styles.borderColor,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(Icons.expand_more),
            ),
          ),
        ],
      ),
    );
  }
}
