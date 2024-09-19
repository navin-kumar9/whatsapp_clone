import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/BoldText.dart';
import 'package:whatsapp/Widgets/MobileScreen.dart';
import 'package:whatsapp/Widgets/Responsive.dart';
import 'package:whatsapp/Widgets/WebScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Responsive(
            MobileScreen: MobileScreen(), WebScreen: const WebScreen()));
  }
}
