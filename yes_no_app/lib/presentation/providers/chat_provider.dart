import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> message = [
    Message(text: 'Hola como estas ', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMesage = Message(text: text, fromWho: FromWho.mine);

    message.add(newMesage);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 300));

    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn);
  }
}
