import 'package:flutter/material.dart';
import '../../constant.dart';
import 'package:get/get.dart';
class WelComeScreen extends StatelessWidget {
  const WelComeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2,),
            Image.asset('assets/images/welcome_image.png'),
            Spacer(flex: 9,),
            Text('Welcome to Our Freedom  \nMessaging App',style: Theme.of(context).textTheme.headline5?.copyWith(
              fontWeight: FontWeight.bold
            ),textAlign: TextAlign.center,),
            SizedBox(height: kDefaultPadding*2.5,),
            Text('Freedom talk any person of your \nanother Language',textAlign: TextAlign.center,),
            Spacer(flex: 5,),
            FittedBox(
              child: TextButton(
                  onPressed: (){
                    Get.toNamed('auth_screen');
                  }, child: Row(
                children: [
                  Text('Skip',style: Theme.of(context).textTheme.bodyText1,),
                  Icon(Icons.arrow_forward_rounded,color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.5),),
                ],
              )),
            )
          ],
        ),
      ),

    );
  }
}
