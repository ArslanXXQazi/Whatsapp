import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Views/SplashScreen/whatsapp-splash-screen.dart';
import 'package:whatsapp/Views/authentication/Add-account.dart';
import 'package:whatsapp/Views/authentication/Login-Screen.dart';
import 'package:whatsapp/Views/authentication/verification-screen.dart';
import 'package:whatsapp/Views/home-screen/Whatsapp-homescreen.dart';
import 'package:whatsapp/Views/on-boarding-screen/onboarding-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,

      home:LoginScreen()
      //HomeScreen()
      //Addaccount()
     // WhatsappSplash()
      //Verification(),
   //   OnboardingView()
      //NavBarScreen()
    );
  }
}


class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int selectedindex=0;

  void navOntap(int index)
  {
    setState(() {
      selectedindex=index;
    });
  }
  
  List widgetOptions=
  [

    HomeScreen(),
    NavHome(),
    SettingsNav(),
    SettingsNav(),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: selectedindex,
          onTap: navOntap,
          items:
          [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined)
                    ,label: 'Home'

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
              label: 'Profile'


            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
              label: 'Settings'
            ),

          ]


      ),
    );
  }
}

class SettingsNav extends StatefulWidget {
  const SettingsNav({super.key});

  @override
  State<SettingsNav> createState() => _SettingsNavState();
}

class _SettingsNavState extends State<SettingsNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Settings Screen'),),
    );
  }
}



class ProfileNav extends StatefulWidget {
  const ProfileNav({super.key});

  @override
  State<ProfileNav> createState() => _ProfileNavState();
}

class _ProfileNavState extends State<ProfileNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Profile Screen'),),
    );
  }
}


class NavHome extends StatefulWidget {
  const NavHome({super.key});

  @override
  State<NavHome> createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Home Screen'),),);
  }
}


