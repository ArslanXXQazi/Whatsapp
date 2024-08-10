import 'package:flutter/material.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController _pageController=PageController();
  int _currentPage=0;

  void _onPage(int page){
    setState(() {
      _currentPage=page;
    });

  }
  void _nextPage(){
    if(_currentPage<2)
      {
        _pageController.animateToPage(_currentPage+1,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut);
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  _currentPage!=2?// if stateemnt  --if(_currentpafe!=2){floating button} else{elevate button}
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        TextButton(onPressed: (){}, child: Text('Skip')),
        FloatingActionButton(onPressed: (){
          _nextPage();
        })
      ],)
          :ElevatedButton(onPressed: (){}, child: Text('data')),
      body: Stack(
        children: [
          PageView(
            onPageChanged: _onPage,
            controller: _pageController,
            children: [
              pageBuild(Icons.add_box, 'Heading text1', 'sub  heading text1'),// 0 index
              pageBuild(Icons.add_box, 'Heading text2', 'sub  heading text2'),// 1 index
               pageBuild(Icons.add_box, 'Heading text3', 'sub  heading text3'),// 2 index
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

            ],)
        ],
      ),
    );
  }
  Widget pageBuild(IconData icon, String text1, String text2)
  {
    return Column(children: [
      Icon(icon),
      Mytext(text: text1),
      Text(text2)
    ],);
  }
}
