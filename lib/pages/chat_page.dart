import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_user.dart';
import 'package:chatty/widgets/chat_me.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(40))),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/grup1.png',
                        width: 55,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jakarta Fair',
                            style: titleTextStyle,
                          ),
                          Text(
                            '14,209 members',
                            style: subtitleStyle,
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 38,
                        height: 38,
                        child: FloatingActionButton(
                            backgroundColor: Color(0xff29CB9E),
                            child: Icon(
                              Icons.call,
                              color: whiteColor,
                              size: 18,
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    child: Column(
                      children: [
                        ChatUser(
                          imageURL: 'assets/images/pic1.png',
                          message: 'How are u, guys ?',
                          time: '2:30',
                        ),
                        ChatUser(
                          imageURL: 'assets/images/pic2.png',
                          message: 'Find here :p',
                          time: '3:11',
                        ),
                        ChatMe(
                          message:
                              'Thinking about how to deal\nwith this client from hell...',
                          time: '3:11',
                        ),
                        ChatUser(
                            imageURL: 'assets/images/pic2.png',
                            message: 'Love them',
                            time: '23:11'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(75))),
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            child: TextField(
                              style:
                                  TextStyle(color: greyColor, fontSize: 15.0),
                              decoration: InputDecoration.collapsed(
                                hintText: 'Type your message...',
                                hintStyle: TextStyle(color: greyColor),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: FloatingActionButton(
                              elevation: 0,
                              backgroundColor: Color(0xffEAEFF3),
                              child: Icon(
                                Icons.send,
                                size: 16,
                                color: Color(0xff505C6B),
                              ),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
