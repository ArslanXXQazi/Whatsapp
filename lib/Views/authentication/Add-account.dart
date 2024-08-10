import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Controller/Components/Mybutton.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';
import 'package:whatsapp/Controller/constants/colors.dart';
import 'package:whatsapp/Controller/constants/images.dart';
import 'package:whatsapp/Views/authentication/verification-screen.dart';


class Addaccount extends StatefulWidget {
  const Addaccount({super.key});

  @override
  State<Addaccount> createState() => _AddaccountState();
}

class _AddaccountState extends State<Addaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
      Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [
        Container(
        height: 250,
          width: 300,
          child: Image.asset(AppImages.whatsapp),
        ),
        Mytext(text: 'Add an account',fontcolor: Appcolor.blackcolor,fontsize: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Mytext(text: 'Read our'),
            SizedBox(width: 5,),
            Mytext(text: 'Privacy ploicy.',fontcolor: Appcolor.bluecolor,),
            Mytext(text: 'Tap "Agree and continue"to'),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Mytext(text: 'accept the'),
            SizedBox(width: 5,),
            Mytext(text: 'Terms of service',fontcolor: Appcolor.bluecolor,),
          ],),
            ],),
            Column(
              children: [
                Mybutton(ontab: (){
                  Get.to(()=>Verification());
                },
                  text: 'Agree and continue',
                  buttoncolor: Appcolor.greenishcolor,
                  width: 350,
                  bordercircular: 50,

                ),
              ],
            ),
        ],),
      ),),
    );
  }
}
