import 'package:flutter/material.dart';
import '../../../models/message.dart';
import '../../../constant.dart';
class TextMessage extends StatelessWidget {
  final ChatMessage message;
  TextMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding*0.8,vertical: kDefaultPadding/2),
        decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(message.isSender?1:0.1),
            borderRadius: BorderRadius.all(Radius.circular(20)
            )
        ),
        child:Text(message.text,style: TextStyle(color: message.isSender?Colors.white:Theme.of(context).textTheme.bodyText1!.color),)
    );
  }
}