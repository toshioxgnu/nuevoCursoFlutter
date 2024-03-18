import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shoro mota'),
          leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/474x/4d/6d/bc/4d6dbc15b1b55639437071f825fa976c.jpg'),
            ),
          ),
          centerTitle: true,
          actions: [],
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 200,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? HerMessageBubble()
                    : MyMessageBubble();
              },
            )),
            // Caja de texto
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
