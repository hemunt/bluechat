import 'package:blue_chat/Constants/Colors.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String? title;
  final IconButton? backButton;
  final IconButton? actionButton;
  final Color color;
  const MyAppBar({super.key, this.title, this.backButton, this.actionButton, this.color = tab1Color});

  @override
  Widget build(BuildContext context){
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight ,left: 20,right: 20),
      height:  statusBarHeight + 60,
      width: double.infinity,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0)),
        gradient: LinearGradient(
            end: Alignment.topRight,
            begin: Alignment.bottomLeft,
            colors: [color, color.withOpacity(0.79)]),
      ),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                backButton ?? const SizedBox(),
                //Title
                Text(title ?? "", style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0
                ),),
              ],
            ),
            actionButton ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}