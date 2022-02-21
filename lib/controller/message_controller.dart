import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/message.dart';
class MessageController extends GetxController{
  static MessageController get messageGetter=>Get.find<MessageController>();
  List messageData =[
    ChatMessage(
      text: "Hi Sajol,",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: false,
    ),
    ChatMessage(
      text: "Hello, How are you?",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: true,
    ),
    ChatMessage(
      text: "",
      messageType: ChatMessageType.audio,
      messageStatus: MessageStatus.viewed,
      isSender: false,
    ),
    ChatMessage(
      text: "",
      messageType: ChatMessageType.video,
      messageStatus: MessageStatus.viewed,
      isSender: true,
    ),
    ChatMessage(
      text: "Error happend",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.not_sent,
      isSender: true,
    ),
    ChatMessage(
      text: "This looks great man!!",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: false,
    ),
    ChatMessage(
      text: "Glad you like it",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.not_view,
      isSender: true,
    ),
  ];


}