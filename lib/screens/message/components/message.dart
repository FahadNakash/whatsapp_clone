import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constant.dart';
import 'package:whatsapp_clone/models/message.dart';
import '../components/audio_message.dart';
import '../components/vedio_message.dart';
import '../components/message_status_dot.dart';
import '../components/text_message.dart';
class Message extends StatelessWidget {
  final ChatMessage message;
  Message({required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:message.isSender?MainAxisAlignment.end:MainAxisAlignment.start,
      children: [
        if (!message.isSender)
          CircleAvatar(
            backgroundImage:AssetImage('assets/images/user.png'),
            radius:15,
          ),
        SizedBox(width: kDefaultPadding/2,),
        if (message.messageType==ChatMessageType.text)
          TextMessage(message: message),
        if (message.messageType==ChatMessageType.audio)
          AudioMessage(message: message,),
        if (message.messageType==ChatMessageType.video)
          VedioMessage(message: message,),
        if (message.isSender)
          MessageStatusDot(status: message.messageStatus,)
      ],
    );
  }
}







