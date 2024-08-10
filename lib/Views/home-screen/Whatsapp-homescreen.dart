import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';
import 'package:whatsapp/Controller/Components/Mytextformfeildborders.dart';
import 'package:whatsapp/Controller/Components/Textformfeild-prefix-icon.dart';
import 'package:whatsapp/Controller/constants/colors.dart';
import 'package:whatsapp/Controller/constants/images.dart';
import 'package:whatsapp/Model/ModelClass/Model-class.dart';
import 'package:whatsapp/Views/authentication/Add-account.dart';
import 'package:whatsapp/Views/home-screen/Conversation-screen.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<ModelClass> listname=[
  ModelClass(name: 'Arslan', subname: 'Hello Arslan',images:AppImages.arslan,notification: "5",time: '7:34 am'),
  ModelClass(name: 'Khan', subname: 'Hello Arslan',images:AppImages.hamza,notification: "5",time: '7:34 am'),
  ModelClass(name: 'Zeeshan', subname: 'Hello Arslan',images:AppImages.mazi,notification: "5",time: '7:34 am'),
  ModelClass(name: 'Farhan', subname: 'Hello Arslan',images:AppImages.munir,notification: "5",time: '7:34 am'),
  ModelClass(name: 'Haider', subname: 'Hello Arslan',images:AppImages.talha,notification: "5",time: '7:34 am'),
  ModelClass(name: 'Asif', subname: 'Hello Arslan',images:AppImages.friends,notification: "5",time: '7:34 am'),
  ModelClass(name: 'Kashif', subname: 'Hello Arslan',images:AppImages.furqan,notification: "5",time: '7:34 am'),
  ModelClass(name: 'Mudassir', subname: 'Hello Arslan',images:AppImages.furqan,notification: "5",time: '7:34 am'),
  ModelClass(name: 'Ali Raza', subname: 'Hello Arslan',images:AppImages.furqan,notification: "5",time: '7:34 am'),
  ModelClass(name: 'Qazi', subname: 'Hello Arslan',images:AppImages.furqan,notification: "5",time: '7:34 am'),
];
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Mytext(text: 'Whatsapp',fontcolor: Appcolor.greenishcolor,fontsize: 25,),
        actions: [Row(children: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 30,),
          Icon(Icons.more_vert),
        ],)],
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){},child: Icon(Icons.circle_outlined,color: Appcolor.bluewish,),
            backgroundColor: Appcolor.whitecolor,),
          SizedBox(height: 10,),
          FloatingActionButton(onPressed: (){},child: Icon(Icons.add_box,color: Appcolor.whitecolor,),
            backgroundColor: Appcolor.greenishcolor,),
        ],
      ),

      body:Column(
        children: [
          Expanded(
            flex: 0 ,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Mytextformfeildborders(hinttext: 'Ask Meta AI or Search',
              prefixicon: Icons.circle_outlined,
                        bordercircular: 50,
                ),
            ),
              ),
          Expanded(
            flex: 90,
              child:ListView.builder(
                  itemCount: listname.length,
                itemBuilder: (context, index){
                    return ListTile(
                      onTap: (){
                        Get.to(()=>Conversation(
                            text:(listname[index].name.toString()),
                          image: listname[index].images.toString()));
                      },
                      leading: CircleAvatar(
                        backgroundImage:AssetImage(listname[index].images.toString())
                      ),
                      title: Mytext(text: (listname[index].name.toString()),),
                      subtitle: Mytext(text: (listname[index].subname.toString()),),
                      trailing: Column(
                        children: [
                          Text(listname[index].time.toString()),
                         CircleAvatar(
                           backgroundColor: Appcolor.greenishcolor,
                           radius: 10,
                           child:  Mytext(text:(listname[index].notification.toString()),fontcolor: Colors.white,fontsize: 12,)
                         )
                        ],
                      )
                    );
                }
              ),
          )
        ],
      ),
    );
  }
}
