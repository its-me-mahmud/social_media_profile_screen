import 'package:flutter/material.dart';

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
                  fontWeight: FontWeight.w600, color: Color(0xFF000000)),
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
    );
  }
}
