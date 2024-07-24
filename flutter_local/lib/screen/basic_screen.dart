import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatefulWidget {
  @override
  _BasicState createState() => _BasicState();
}

class _BasicState extends State<BasicScreen> {
  ChatUser user1 = ChatUser(
    id: '1',
    firstName: 'me',
    lastName: 'me',
  );
  ChatUser user2 = ChatUser(
      id: '2',
      firstName: 'chatGPT',
      lastName: 'openAI',
      profileImage: "assets/img/gpt_icon.png");

  late List<ChatMessage> messages = <ChatMessage>[
    ChatMessage(
      text: '반갑습니다. 어서오세요. 무엇을 도와드릴까요?',
      user: user2,
      createdAt: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic example'),
      ),
      body: DashChat(
        currentUser: user1,
        onSend: (ChatMessage m) {
          setState(() {
            messages.insert(0, m);
          });
          Futrue<String> data = sendMessageToServer(m.text);
          data.then((value) {
            setState(() {
              messages.insert(
                  0,
                  ChatMessage(
                    text: value,
                    user: user2,
                    createdAt: DateTime.now(),
                  ));
            });
          });
        },
        messages: messages,
      ),
    );
  }

  Future<String> sendMessageToServer(String message) async {}
}
