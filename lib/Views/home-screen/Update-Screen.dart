import 'package:flutter/material.dart';
import 'package:whatsapp/Controller/Components/Mybutton.dart';
import 'package:whatsapp/Controller/Components/Mycolumn.dart';
import 'package:whatsapp/Controller/Components/Mylisttile.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';
import 'package:whatsapp/Controller/constants/images.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Mytext(text: 'Updates',fontsize: 20,),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Icon(Icons.camera_alt_outlined),
                SizedBox(width: 10,),
                Icon(Icons.search_rounded),
                SizedBox(width: 10,),
                Icon(Icons.more_vert),
              ],),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Mytext(text: 'Status',fontsize: 20,fontWeight: FontWeight.bold,),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                Mycolumn(image: AppImages.arslan, name: "arslan"),
                SizedBox(width: 10,),
                Mycolumn(image: AppImages.furqan, name: "Zeeshan"),
                  SizedBox(width: 10,),
                Mycolumn(image: AppImages.friends, name: "Asif"),
                  SizedBox(width: 10,),
                Mycolumn(image: AppImages.mazi, name: "Mazi"),
                  SizedBox(width: 10,),
                Mycolumn(image: AppImages.talha, name: "talha"),
                  SizedBox(width: 10,),
                  Mycolumn(image: AppImages.munir, name: "Farhan"),
                  SizedBox(width: 10,),
                  Mycolumn(image: AppImages.hamza, name: "Qazi"),
                  SizedBox(width: 10,),
                  Mycolumn(image: AppImages.arslan, name: "Mudassir"),
                  SizedBox(width: 10,),
                  Mycolumn(image: AppImages.friends, name: "arslan"),
              ],),
            ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Mytext(text: 'Channels',fontsize: 20,),
                Mytext(text: 'Explore',fontsize: 15,fontcolor: Colors.green,),
              ],),
              MylistTile2(image: AppImages.arslan, title: 'Islamic videos ', subtitle:'Wellcome every one',text: 'today',),
              MylistTile2(image: AppImages.hamza, title: 'Funny videos ', subtitle:'Wellcome every one',text: 'yesterday',),
              MylistTile2(image: AppImages.munir, title: 'Sports videos ', subtitle:'Wellcome every one',text: 'today',),
              MylistTile2(image: AppImages.mazi, title: 'Football videos ', subtitle:'Wellcome every one',text: 'yesterday',),
              MylistTile2(image: AppImages.friends, title: 'Cricket videos ', subtitle:'Wellcome every one',text: 'today',),
              MylistTile2(image: AppImages.furqan, title: 'Hockey videos ', subtitle:'Wellcome every one',text: 'yesterday',),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Mybutton(text: "Explore more",buttoncolor: Colors.green,fontcolor: Colors.white,fontWeight: FontWeight.bold,bordercircular: 50,height: 45,
                    ontab: (){}),
              )
          ],),
        ),
      ),
    );
  }
}
