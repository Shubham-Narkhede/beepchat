import 'package:beepchat/widgets/widgetBgImage.dart';
import 'package:beepchat/widgets/widgetText.dart';
import 'package:flutter/material.dart';

class ModelChat {
  String imageUrl;
  String userName;
  String chatMessage;
  bool isRead;

  ModelChat(
      {required this.chatMessage,
      required this.imageUrl,
      required this.isRead,
      required this.userName});
}

class ScreenChatList extends StatefulWidget {
  @override
  _ScreenChatListState createState() => _ScreenChatListState();
}

class _ScreenChatListState extends State<ScreenChatList> {
  List<ModelChat> list = [
    ModelChat(
        chatMessage: 'Hi, Good Evening',
        imageUrl: 'chat1',
        isRead: true,
        userName: 'Shubham'),
    ModelChat(
        chatMessage: 'Morning',
        imageUrl: 'chat2',
        isRead: false,
        userName: 'Radhe'),
    ModelChat(
        chatMessage: 'Have you finished dinner?',
        imageUrl: 'chat3',
        isRead: true,
        userName: 'Dhiru'),
    ModelChat(
        chatMessage: 'Morning',
        imageUrl: 'chat2',
        isRead: false,
        userName: 'Radhe'),
    ModelChat(
        chatMessage: 'Hi, Good Evening',
        imageUrl: 'chat1',
        isRead: true,
        userName: 'Shubham'),
    ModelChat(
        chatMessage: 'Morning',
        imageUrl: 'chat2',
        isRead: false,
        userName: 'Radhe'),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WidgetBgImage(),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  widgetText("Welcome Back, ", fontSize: 18),
                  widgetText("Shubham Narkhede :(",
                      fontSize: 20, fontWeight: FontWeight.w500)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 17, top: 20),
              child: Row(
                children: [
                  widgetStatus(
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.yellow, shape: BoxShape.circle),
                        child: Center(
                            child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ))),
                      ),
                      "Add Story",
                      color: Colors.grey.shade700),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        widgetStatus(widgetChatImage("chat1"), "Shubham"),
                        widgetStatus(widgetChatImage("chat2"), "Sonu"),
                        widgetStatus(widgetChatImage("chat3"), "Radhe"),
                        widgetStatus(widgetChatImage("chat1"), "Sunny"),
                        widgetStatus(widgetChatImage("chat2"), "Dhiru"),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    height: 5,
                    width: 100,
                    color: Colors.grey,
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemBuilder: (_, int i) {
                      ModelChat chat = list[i];
                      return Container(
                        margin:
                            const EdgeInsets.only(left: 16, right: 16, top: 5),
                        padding: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey.shade300))),
                        child: Row(
                          children: [
                            Image.asset("assets/${chat.imageUrl}.png"),
                            Expanded(
                                child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 3),
                                    child: widgetText(chat.userName,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  widgetText(chat.chatMessage,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade600)
                                ],
                              ),
                            )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: widgetText(
                                      "${DateTime.now().hour.toString()} : ${DateTime.now().minute.toString()} PM",
                                      color: Colors.black),
                                ),
                                if (chat.isRead == true)
                                  Image.asset("assets/doubleCheck.png")
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: list.length,
                  ))
                ],
              ),
            ))
          ],
        )
      ],
    );
  }

  Widget widgetStatus(
    Widget child,
    String title, {
    Color? color,
  }) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.only(right: 8, bottom: 10),
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: color ?? Colors.yellow, width: 3)),
          child: Center(
            child: FractionallySizedBox(
                heightFactor: 0.9, widthFactor: 0.9, child: child),
          ),
        ),
        widgetText(title, fontSize: 16, fontWeight: FontWeight.w500)
      ],
    );
  }

  Widget widgetChatImage(String url) {
    return Image.asset("assets/$url.png");
  }
}
