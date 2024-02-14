import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../elements/primary_button.dart';
import '../../elements/user_info_widget.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late List<TextEditingController> _controller;

  @override
  void initState() {
    super.initState();
    _controller = [
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
    ];
  }

  @override
  void dispose() {
    for (var controller in _controller) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Column(

        children: <Widget>[
          Image.asset("lib/images/signup_top_image.jpg"),

          const HomePageTitle(),

          UserInfo(screenWidth: screenWidth(context), hinText: "Adınız Soyadınız", isNumber: false, isDate: false,controller: _controller[0],miniicon: const Icon(Icons.person),),
          UserInfo(screenWidth: screenWidth(context), hinText: "TC Kimlik No", isNumber: true, isDate: false,controller: _controller[1],miniicon: const Icon(Icons.numbers_sharp),),
          UserInfo(screenWidth: screenWidth(context), hinText: "Doğum Tarihi", isNumber: false, isDate: true,controller: _controller[2],miniicon:const Icon(Icons.date_range_sharp),),
          PrimaryButton(buttontext: "SİSTEME GİR", buttonheight: screenHeight(context)/16, buttonwidth: screenWidth(context)*.69),

        ],
      ),
    );
  }
}




class HomePageTitle extends StatelessWidget {
  const HomePageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: screenHeight(context)/66,right: screenWidth(context)/2.7),
      child: Text("OTM Sofware\nQR Giriş Sistemine\nHoşgeldiniz",
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: screenWidth(context)/15,fontWeight: FontWeight.bold),),

    );
  }
}
