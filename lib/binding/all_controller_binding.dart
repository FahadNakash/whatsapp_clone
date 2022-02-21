import 'package:get/get.dart';
import '../controller/chat_controller.dart';
import '../controller/message_controller.dart';
class AllControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(() => ChatController());
    Get.lazyPut<MessageController>(() => MessageController());
  }
}