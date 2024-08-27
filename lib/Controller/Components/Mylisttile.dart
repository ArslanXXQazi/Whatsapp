import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';
import 'package:whatsapp/Controller/constants/images.dart';
import 'package:whatsapp/Views/home-screen/Update-Screen2.dart';
import 'package:whatsapp/Views/home-screen/call-screen2.dart';


class MylistTile extends StatelessWidget {
  String image;
  String title;
  String subtitle;
   MylistTile({super.key,
     required this.image,
     required this.title,
     required this.subtitle,
   });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CallScreen2(image: image,name: title,)));
      },
      leading: CircleAvatar(
       backgroundImage: AssetImage(image),
      ),
      title: Mytext(text:title,fontWeight: FontWeight.bold,),
      subtitle: Mytext(text:subtitle,),
      trailing: Icon(Icons.phone),
    );
  }
}

class MylistTile2 extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  String text;
  MylistTile2({super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context)=>UpdateScreen2(image: image, name: title)));
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Mytext(text:title,fontWeight: FontWeight.bold,),
      subtitle: Mytext(text:subtitle,fontsize: 14,),
      trailing: Mytext(text: text),
    );
  }
}
