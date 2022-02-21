import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../widgets/custom_outline_button.dart';
class CurrentStatus extends StatelessWidget {
  const CurrentStatus({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
      height: kDefaultPadding*3,
      color: kPrimaryColor,
      child: Row(
        children: [
          CustomOutLineButton(title: 'Recent Messages',active: false,),
          SizedBox(width: kDefaultPadding,),
          CustomOutLineButton(title: 'Active',active: true,),
        ],
      ),
    );
  }
}
