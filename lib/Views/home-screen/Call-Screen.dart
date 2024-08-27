import 'package:flutter/material.dart';
import 'package:whatsapp/Controller/Components/Mylisttile.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';
import 'package:whatsapp/Controller/constants/images.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Mytext(text: "Calls",fontsize: 20,),
      ),
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

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: FloatingActionButton(onPressed: (){},backgroundColor: Colors.green, child: Icon(Icons.call,color: Colors.white,),
        ),
      ),



      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Mytext(text: 'Favourite',fontWeight: FontWeight.bold,fontsize: 20,),
            SizedBox(height: 10,),
           ListTile(
             leading: CircleAvatar(
               backgroundImage: AssetImage(AppImages.whatsapp),
             ),
             title: Mytext(text: "Add Favourite"),
           ),
              SizedBox(height: 10,),
              Mytext(text: "Recent",fontsize: 20,fontWeight: FontWeight.bold,),
              SizedBox(height: 10,),
              MylistTile(image: AppImages.arslan, title: "Arslan", subtitle: '3 minutes ago',),
              MylistTile(image: AppImages.munir, title: "Zeeshan", subtitle: '30 minutes ago'),
              MylistTile(image: AppImages.furqan, title: "Asif", subtitle: '50 minutes ago'),
              MylistTile(image: AppImages.friends, title: "Maazi", subtitle: '55 minutes ago'),
              MylistTile(image: AppImages.mazi, title: "Talha", subtitle: '1 days ago'),
              MylistTile(image: AppImages.talha, title: "Hamza", subtitle: '13 days ago'),
              MylistTile(image: AppImages.hamza, title: "Furqan", subtitle: '23 days ago'),
              MylistTile(image: AppImages.munir, title: "Arslan", subtitle: '24 days ago'),
              MylistTile(image: AppImages.friends, title: "Farhan", subtitle: '1 month ago'),
              MylistTile(image: AppImages.friends, title: "Kashif", subtitle: '2 month ago'),
              MylistTile(image: AppImages.furqan, title: "Zain", subtitle: '3 month ago'),
          ],),
        ),
      ),
    );
  }
}
