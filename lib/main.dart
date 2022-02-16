import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/welcome/welcome_screen.dart';
import 'Theme.dart';
import 'binding/all_controller_binding.dart';
import 'screens/signinORSignUp/auth_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControllerBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      //by defalt theme mode is thememode.system
      // themeMode: ThemeMode.system,
      home: WelComeScreen(),
      getPages: [
        GetPage(name: '/auth_screen',page: ()=>AuthScreen(),transition: Transition.fadeIn),
      ],
    );
  }
}
