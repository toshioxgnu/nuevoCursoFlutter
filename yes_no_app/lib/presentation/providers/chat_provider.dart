import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Hola como estas ', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
    Message(text: 'como estas ?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage() async {
    //TODO: implementar metodo
  }
}
