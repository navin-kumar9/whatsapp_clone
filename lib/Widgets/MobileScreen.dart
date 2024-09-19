import 'package:flutter/material.dart';
import 'package:whatsapp/CallPages.dart';
import 'package:whatsapp/Colors.dart';
import 'package:whatsapp/StatusPages.dart';
import 'package:whatsapp/Widgets/BoldText.dart';
import 'package:whatsapp/Widgets/LightText.dart';
import 'package:whatsapp/Widgets/ChatPage.dart';

class MobileScreen extends StatelessWidget {
  MobileScreen({super.key});

  List<Widget> Pages = [ChatPage(), StatusPages(), CallPages()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: backgroundColor,
            appBar: AppBar(
              bottom: const TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorWeight: 3,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: tabColor,
                  indicatorColor: tabColor,
                  tabs: [
                    Tab(
                      text: "CHAT",
                    ),
                    Tab(
                      text: "STATUS",
                    ),
                    Tab(
                      text: "CALL",
                    )
                  ]),
              backgroundColor: appBarColor,
              title: LightText(
                text: "WhatsApp",
                color: Colors.white,
              ),
              actions: const [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
            body: TabBarView(children: Pages)),
      ),
    );
  }
}
