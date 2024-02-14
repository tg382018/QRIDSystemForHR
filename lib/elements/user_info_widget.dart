import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({

    super.key,
    required this.screenWidth,
    required this.hinText,
    required  this.isNumber,
    required  this.isDate,
    required this.controller,
    required this.miniicon,

  });
  final String hinText;
  final double screenWidth;
  final bool isNumber;
  final bool isDate;
  final TextEditingController controller;
  final Icon miniicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth*0.8,
      margin: EdgeInsets.only(top: screenWidth*0.05,right: screenWidth*0.13),
      padding:
       EdgeInsets.symmetric(horizontal: screenWidth*0.02, vertical: screenWidth*0.015),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.deepPurple.withOpacity(.1)),
      child: TextFormField(controller: controller,
        onTap: () async
        {
          if(isDate==true)
          {
            DateTime date = DateTime(1900);
            FocusScope.of(context).requestFocus( FocusNode());
            date = (await showDatePicker(
                context: context,
                initialDate:DateTime.now(),
                firstDate:DateTime(1900),
                lastDate: DateTime(2100)))!;
            controller.text = date.toIso8601String();
          }
        },
        keyboardType:isNumber ?  TextInputType.number: null,
        validator: (value) {
          if (value!.isEmpty) {
            return "$hinText gereklidir";
          }
          return null;
        },
        decoration:  InputDecoration(
          icon: miniicon,
          border: InputBorder.none,
          hintText: hinText,
        ),
      ),
    );
  }
}
