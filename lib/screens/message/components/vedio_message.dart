import 'package:flutter/material.dart';
import '../../../models/message.dart';
import '../../../constant.dart';
class VedioMessage extends StatelessWidget {
  final ChatMessage message;
  VedioMessage({required this.message});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      width: MediaQuery.of(context).size.width*0.45,
      child: AspectRatio(
          aspectRatio: 3/2,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset('assets/images/vedio.png'),
              ),
              Icon(Icons.play_circle_fill,color: kPrimaryColor,size: 50,)
            ],
          )
      ),
    );


  }
}