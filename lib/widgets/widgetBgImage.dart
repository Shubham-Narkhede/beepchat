import 'package:flutter/material.dart';

class WidgetBgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset(
        "assets/backgroundImage.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
