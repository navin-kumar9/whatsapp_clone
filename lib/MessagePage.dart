import 'package:flutter/material.dart';
import 'package:whatsapp/Colors.dart';
import 'package:whatsapp/Widgets/BoldText.dart';
import 'package:whatsapp/Widgets/LightText.dart';
import 'package:whatsapp/Widgets/MyMessage.dart';
import 'package:whatsapp/Widgets/YourMessage.dart';
import 'package:whatsapp/Widgets/contacts.dart';

class MessagePage extends StatefulWidget {
  MessagePage({super.key, required this.userName});

  String userName;

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: Container(
            height: 70,
            width: double.maxFinite,
            color: backgroundColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 27,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 27,
                  ),
                  Expanded(
                      child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _controller,
                    decoration: InputDecoration(
                        label: LightText(
                          text: "Message",
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )),
                  GestureDetector(
                    onTap: () {
                      //add to list

                      Map<String, dynamic> map = {
                        "isMe": true,
                        "text": _controller.text,
                        "time": DateTime.now().toString()
                      };

                      setState(() {
                        messages.add(map);
                        _controller.clear();
                      });
                    },
                    child: const Icon(
                      Icons.send,
                      size: 27,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
            ),
            backgroundColor: backgroundColor,
            centerTitle: true,
            title: BoldText(
              text: widget.userName,
              color: Colors.white,
            ),
          ),
          body: Stack(
            children: [
              Container(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Image.asset("assets/backgroundImage.png",
                    fit: BoxFit.cover),
              ),
              Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: ListView.builder(
                      itemCount: messages.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return messages[index]["isMe"] == true
                            ? Mymessage(
                                messageText: messages[index]["text"].toString())
                            : Yourmessage(
                                messageText:
                                    messages[index]["text"].toString());
                      }))
            ],
          )),
    );
  }
}
