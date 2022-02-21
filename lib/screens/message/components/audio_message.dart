import 'package:flutter/material.dart';
import '../../../models/message.dart';
import '../../../constant.dart';
class AudioMessage extends StatelessWidget {
  final ChatMessage message;
  AudioMessage({required this.message});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.6,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding/12),
      margin: EdgeInsets.only(top: kDefaultPadding/2),
      decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(message.isSender?1:0.1),
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Row(
        children: [
          Icon(Icons.play_arrow,color: message.isSender?kContentColorDarkTheme:kPrimaryColor.withOpacity(0.8),),
          Expanded(
              child: Slider(
                activeColor: message.isSender?kContentColorDarkTheme:kPrimaryColor.withOpacity(0.6),
                value: 0,
                onChanged: (value){},
              )),
          Text('0.25',style: TextStyle(color: message.isSender?kContentColorLightTheme:kContentColorDarkTheme),)
        ],
      ),
    );
  }
}