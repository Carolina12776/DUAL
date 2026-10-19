import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController=ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    
    Message(text: 'Hola amor!', fromWho: FromWho.mine ),
    Message(text: 'Ysa ,jnflake!', fromWho: FromWho.mine ), 
    
  ];

  Future<void> sendMessage (String text) async{
    if(text.isEmpty) return;

    final newMesage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMesage);

    if(text.endsWith('?')){
      herReply();
    }

    notifyListeners();
    moveScrollToBottom();
    
  }
  Future<void> herReply() async{
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners();
     moveScrollToBottom();
  }

  Future<void> moveScrollToBottom()async{
    await Future.delayed(const Duration(microseconds: 100));
  
 
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut);
  }
}