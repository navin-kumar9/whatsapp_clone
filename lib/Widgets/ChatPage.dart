import 'package:flutter/material.dart';
import 'package:whatsapp/MessagePage.dart';
import 'package:whatsapp/Widgets/BoldText.dart';
import 'package:whatsapp/Widgets/LightText.dart';
import 'package:whatsapp/Widgets/contacts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: contacts.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MessagePage(
                            userName: contacts[index]['name'],
                          )));
            },
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(contacts[index]['profilePic']),
              ),
              title: BoldText(
                text: contacts[index]['name'],
                color: Colors.white,
              ),
              subtitle: LightText(
                text: contacts[index]['message'],
                color: Colors.white,
                size: 15,
              ),
              trailing: LightText(
                text: contacts[index]['time'],
                color: Colors.white,
                size: 15,
              ),
            ),
          );
        });
  }
}
