import 'package:flutter/material.dart';
import 'package:whatsapp/Controller/Components/Mylisttile.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';
import 'package:whatsapp/Controller/constants/images.dart';



class CallScreen2 extends StatelessWidget {
  String image;
  String name;
   CallScreen2({super.key,required this.image,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Mytext(text: name,fontsize: 20,),
            Mytext(text: 'hey there i am using whatsapp'),
          ],
        ),
        actions: [
          Icon(Icons.call),
          SizedBox(width: 30,),
          Icon(Icons.video_call),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       Center(child: Mytext(text: "Call Screen",fontsize: 25,fontWeight: FontWeight.bold,fontcolor: Colors.green,),)
      ],),
    );
  }
}
