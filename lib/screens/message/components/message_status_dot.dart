import 'package:flutter/material.dart';
import '../../../models/message.dart';
import '../../../constant.dart';
class MessageStatusDot extends StatelessWidget {
  final MessageStatus status;
  MessageStatusDot({required this.status});
  @override
  Widget build(BuildContext context) {
    Color showMessageStatusColor(MessageStatus status){
      switch(status){
        case MessageStatus.viewed:
          return kPrimaryColor;
          break;
        case MessageStatus.not_sent:
        return kErrorColor;
        break;
        default:
          return kPrimaryColor.withOpacity(0.3);
      }
      }
    return Container(
      height: 15,
      width: 15,
      margin: EdgeInsets.only(left: kDefaultPadding/2),
      decoration: BoxDecoration(
          color: showMessageStatusColor(status),
          shape: BoxShape.circle
      ),
      child: Icon(
        status==MessageStatus.not_sent?Icons.close:Icons.done,size: 8,color: Theme.of(context).scaffoldBackgroundColor,),
    );
  }
}