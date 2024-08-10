import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';
import 'package:whatsapp/Controller/constants/colors.dart';
import 'package:whatsapp/Controller/constants/images.dart';
import 'package:whatsapp/Views/authentication/Add-account.dart';
import 'package:whatsapp/Views/authentication/verification-screen.dart';

class WhatsappSplash extends StatefulWidget {
  const WhatsappSplash({super.key});

  @override
  State<WhatsappSplash> createState() => _WhatsappSplashState();
}

class _WhatsappSplashState extends State<WhatsappSplash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>Addaccount());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset(AppImages.whatsapp),
            ),
           SizedBox(height: 20,),
           Mytext(text: 'Whatsapp',fontsize: 25,fontcolor: Appcolor.greenishcolor,),
           Mytext(text: 'Meta AI',fontsize: 15,fontcolor: Appcolor.greenishcolor,)
          ],
        ))
      ],),
    );
  }
}
