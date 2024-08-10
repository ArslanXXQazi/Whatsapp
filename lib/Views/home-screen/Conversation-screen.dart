import 'package:flutter/material.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';
import 'package:whatsapp/Controller/constants/colors.dart';
import 'package:whatsapp/Controller/constants/images.dart';

class Conversation extends StatefulWidget {
  String text;
  String image;
   Conversation({super.key,required this.text,required this.image});

  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(backgroundImage:AssetImage(widget.image) ),
        title: Text(widget.text),
          centerTitle: true,
      ),
      body:Column(children: [
        Container(child: Center(child:
            Mytext(text: "Conversation Screen",fontsize: 30,fontcolor: Colors.red,)
          ),
        )
      ],
      )
    );
  }
}
