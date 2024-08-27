import 'package:flutter/material.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';
import 'package:whatsapp/Controller/constants/images.dart';


class Mycolumn extends StatelessWidget {
  String image;
  String name;
   Mycolumn({super.key,
     required this.image,
     required this.name,
   });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleAvatar(
        backgroundColor: Colors.green,
        radius: 35,
        child: CircleAvatar(
          radius: 33,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(image),
        ),
      ),
      Mytext(text: name),
    ],);
  }
}
