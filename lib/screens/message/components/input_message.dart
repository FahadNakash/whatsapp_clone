import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constant.dart';
class InputMessage extends StatelessWidget {
  const InputMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding/3,
            vertical: kDefaultPadding/3,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
               color: Colors.grey.withOpacity(0.2), offset: Offset(0,4),blurRadius: 70),
          ]),
      child: Row(
        children: [
          Icon(Icons.mic,color:kPrimaryColor),
          SizedBox(width: kDefaultPadding,),
          Expanded(
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding/3),
                height: kDefaultPadding*3,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Row(
                   children: [
                     Icon(Icons.emoji_emotions_outlined,color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.6)),
                     Expanded(
                         child: TextFormField(
                           decoration: InputDecoration(
                             hintText:'Type Text Message',
                             border: InputBorder.none
                           ),
                         )
                     ),
                     Icon(Icons.attach_file,color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.6)),
                     Icon(Icons.camera_alt_outlined,color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.6),)
                   ],
                ),
          )
          )
        ],
      ),
    );
  }
}
