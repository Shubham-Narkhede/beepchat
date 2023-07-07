import 'package:beepchat/screens/ScreenSplash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenSplash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// https://www.figma.com/file/SnuR6dgCxatfD05S9A8A35/Beep-Chat-App-Ui-(Community)?type=design&mode=design&t=71Qc4yBZXBopLhWN-0
