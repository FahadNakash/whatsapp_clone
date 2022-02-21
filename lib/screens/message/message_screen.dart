import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constant.dart';
import 'package:whatsapp_clone/screens/message/components/user_message.dart';
import '../message/components/input_message.dart';
class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
                Positioned(
                  bottom: 5,
                    right: 2,
                    child: Container(height: 10,width: 10,decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle,border: Border.all(color: kPrimaryColor,width: 2)),))
              ],
            ),
            SizedBox(width: kDefaultPadding/3,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Fahad Nakash',style: TextStyle(fontSize: 15),),
                SizedBox(height: kDefaultPadding/4,),
                Text('Active 3m ago',style: TextStyle(fontSize: 12),)
              ],
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.call),),
          IconButton(onPressed: (){}, icon: Icon(Icons.voice_chat_rounded),),
          SizedBox(width: kDefaultPadding/3,)
        ],
      ),
      body: Column(
        children: [
          UserMessages(),
          InputMessage(),

        ],
      ),
    );
  }
}
