import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Controller/Components/Mytextformfelid-simple.dart';
import 'package:whatsapp/Controller/Components/Mybutton.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';
import 'package:whatsapp/Controller/Components/Textformfeild-prefix-icon.dart';
import 'package:whatsapp/Controller/Components/My-textformfeild-smple.dart';
import 'package:whatsapp/Controller/constants/colors.dart';
import 'package:whatsapp/Views/home-screen/Whatsapp-homescreen.dart';
import 'package:whatsapp/main.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Mytext(text: 'Verify your phone number',fontsize: 22,fontcolor: Appcolor.greenishcolor,),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.more_vert),
        )],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Column(children: [
            Column(children: [
              Mytext(text: 'whatsapp will need to verify your phone number.',fontsize: 15,),
              Mytext(text: 'Carrir charges may apply.'),
            ],),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(children: [
               Mytextformfelidsuffixicon(hinttext: "Pakistan", suffixicon:Icon(Icons.arrow_drop_down)),
                SizedBox(height: 10,),
                Row(children: [
                  Expanded(
                      flex: 24,
                      child: Mytextformfelidprefixicon(
                        hinttext: '92',
                        prefixicon: Icon(Icons.add),
                      )),
                  SizedBox(width: 10,),
                  Expanded(
                      flex: 76,
                    child: Mytextformfrildsimple(),
                      )
                ],)
              ],),
            ),
          ],),
          Mybutton(text: 'Next',buttoncolor: Appcolor.greenishcolor,width:350,bordercircular: 50,
              ontab: (){
            Get.to(()=>NavBarScreen());
              }),
           // Mybutton(text: "Next",hight: 50,width: 100,)
          ],),
        ),
      )
      
    );
  }
}
