import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: "hello friend", fromWho: FromWho.mine),
    Message(text: "are you at home?", fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {}
}
