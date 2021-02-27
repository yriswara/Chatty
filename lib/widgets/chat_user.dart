import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatUser extends StatelessWidget {
  final String imageURL;
  final String message;
  final String time;

  ChatUser({this.imageURL, this.message, this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Image.asset(
            imageURL,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 11, 20, 11),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  message,
                  textAlign: TextAlign.left,
                  style: titleTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  time,
                  style: subtitleStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
