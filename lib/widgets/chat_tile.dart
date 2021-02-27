import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageURL;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({this.imageURL, this.name, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageURL,
            width: 55,
            height: 55,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: titleTextStyle),
              Text(text,
                  style: unread
                      ? subtitleStyle.copyWith(color: blackColor)
                      : subtitleStyle),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subtitleStyle,
          ),
        ],
      ),
    );
  }
}
