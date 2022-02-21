import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constant.dart';
class CustomOutLineButton extends StatelessWidget {
  final String title;
  final bool active;
  CustomOutLineButton({required this.title,required this.active});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: (){},
      child: Text(title,style: TextStyle(color: active?Colors.white:Colors.black),),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.white)),
      color: active? kPrimaryColor:Colors.white,
      elevation: active?10:0,
        );
  }
}
