import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/BoldText.dart';

class CallPages extends StatelessWidget {
  const CallPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BoldText(text: "call page"),
          )
        ],
      ),
    );
  }
}
