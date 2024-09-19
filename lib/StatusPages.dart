import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/BoldText.dart';

class StatusPages extends StatelessWidget {
  const StatusPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BoldText(text: "status page"),
          )
        ],
      ),
    );
  }
}
