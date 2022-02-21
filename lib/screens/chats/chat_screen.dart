import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constant.dart';
import '../chats/components/current_status.dart';
import '../chats/components/scrollable_chats.dart';
import '../../controller/chat_controller.dart';
import 'package:get/get.dart';
class ChatScreen extends StatelessWidget {
  final chatController=ChatController.chatGetter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Chats'),
        actions: [
          IconButton(
            icon:Icon(Icons.search),
            onPressed: (){},),
        ],
      ),
      body: Column(
        children: [
          CurrentStatus(),
          ScrollAbleChats(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
         onPressed: (){},
          backgroundColor: kPrimaryColor,
          child: Icon(
            Icons.group_add,color: Colors.white,
          ),
    ),
      bottomNavigationBar: Obx(()=>BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: 'People'),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Calls'),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(chatController.chatData[1].image),
              ),
              label: 'Profile'
          ),

        ],
        currentIndex: chatController.currentIndex.value,
        onTap: (value){
          chatController.currentIndex.value=value;
        },
      ),)
    );
  }
}
