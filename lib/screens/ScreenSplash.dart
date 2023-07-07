import 'package:beepchat/widgets/widgetText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ScreenBottomNavBar.dart';

class ScreenSplash extends StatefulWidget {
  @override
  _ScreenSplashState createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 50, bottom: 30),
                      child: widgetText("BEEP",
                          fontWeight: FontWeight.bold, fontSize: 24)),
                  Image.asset("assets/splashIcon.png"),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 50, bottom: 30, left: 20, right: 20),
                      child: widgetText(
                          "stay connected with your friends and family"
                              .toUpperCase(),
                          fontWeight: FontWeight.bold,
                          fontSize: 24)),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 30),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.verified_user,
                          color: Colors.greenAccent,
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 6),
                            child: widgetText("Secure, Private Messaging"))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ScreenBottomBarNav()));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                          child: widgetText("Get Started",
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 6,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      ),
    );
  }
}
