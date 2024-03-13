import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Screen'),
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
    );
  }
}
