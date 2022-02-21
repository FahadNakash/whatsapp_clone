import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../constant.dart';
import 'package:get/get.dart';
class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(kDefaultPadding/2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(flex: 2,),
            Image.asset(MediaQuery.of(context).platformBrightness==Brightness.light?'assets/images/Logo_light.png':'assets/images/Logo_dark.png',height: 150,),
            Spacer(),
            CustomButton('Sign In', (){
              Get.toNamed('/chat_screen');            },kPrimaryColor),
            SizedBox(height: kDefaultPadding/2,),
            CustomButton('Sign Out', (){},kSecondryColor),
            Spacer(flex: 2,),

          ],
        ),
      )
    );
  }
}
