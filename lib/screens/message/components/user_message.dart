import 'package:flutter/material.dart';
import '../components/message.dart';
import '../../../controller/message_controller.dart';
class UserMessages extends StatelessWidget {
  final messageController=MessageController.messageGetter;
  @override
  Widget build(BuildContext context) {
    final messageData=messageController.messageData;
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: messageData.length,
          itemBuilder: (context,index)=>
              Message(message: messageData[index],
              )
          ),
        ));
  }
}

