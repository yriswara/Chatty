import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatMe extends StatelessWidget {
  final String message;
  final String time;

  ChatMe({this.message, this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 11, 20, 11),
            decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  message,
                  textAlign: TextAlign.right,
                  style: titleTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: whiteColor),
                ),
                Text(
                  time,
                  style: subtitleStyle.copyWith(color: greenColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
