import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/BoldText.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: BoldText(
              text: "WebScreen",
            ),
          )
        ],
      ),
    );
  }
}
