import 'package:flutter/material.dart';
import '../constants/constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.buttontext,
    required this.buttonheight,
    required this.buttonwidth,

  });
  final String buttontext;
  final double buttonheight;
  final double buttonwidth;

  @override
  Widget build(BuildContext context) {
    return Container(margin:  EdgeInsets.only(top: screenHeight(context)/66,right: screenWidth(context)/4),
      height: buttonheight,
      width: buttonwidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.amber.shade700),
      child: TextButton(
          onPressed: () {
          },
          child:  Text(
            buttontext,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}