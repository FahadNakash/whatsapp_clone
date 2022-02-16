import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback function;
  final Color color;
  CustomButton(this.title, this.function,this.color);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: function,
      child: Text(title,style: Theme.of(context).textTheme.bodyText1,),
      color: color,
      shape: StadiumBorder(),
    );
  }
}
