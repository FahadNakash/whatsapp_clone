import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constant.dart';
import '../../../controller/chat_controller.dart';
import 'package:get/get.dart';
class ScrollAbleChats extends StatelessWidget {
  final chatController=ChatController.chatGetter;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: chatController.chatData.length,
        itemBuilder: (context,index)=> Padding(
          padding: const EdgeInsets.all(kDefaultPadding/2),
          child:InkWell(
            onTap: (){
              Get.toNamed('/message_screen');
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(chatController.chatData[index].image),
                      ),
                     if(chatController.chatData[index].isActive)
                     Positioned(
                       bottom: 10,
                         right: 1,
                         child:  Container(
                       height: 12,
                       width: 12,
                       decoration: BoxDecoration(
                           color:kPrimaryColor,
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                         border:Border.all(color: Theme.of(context).scaffoldBackgroundColor,width: 2)
                       ),

                     )
                     )
                    ],
                  )
                ),
                Expanded(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(chatController.chatData[index].name),
                    SizedBox(height: 10,),
                    Opacity(
                        opacity: 0.5,
                        child: Text(chatController.chatData[index].lastMessage)),
                  ],
                ),),
                Opacity(
                   opacity: 0.8,
                    child: Text(chatController.chatData[index].time))
              ],
            ),
          )
        ),
    ));
  }
}
