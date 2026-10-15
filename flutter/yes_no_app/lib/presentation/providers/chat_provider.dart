import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  List<Message> messageList = [
    
    Message(text: 'Hola amor!', fromWho: FromWho.mine ),
    Message(text: 'Ysa ,jnflake!', fromWho: FromWho.mine ), 
    
  ];

  Future<void> sendMessage (String text) async{
    final newMesage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMesage);

    notifyListeners();
    
  }
}