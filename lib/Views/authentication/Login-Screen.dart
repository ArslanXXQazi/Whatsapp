import 'package:flutter/material.dart';
import 'package:whatsapp/Controller/Components/Mybutton.dart';
import 'package:whatsapp/Controller/Components/Mytext.dart';
import 'package:whatsapp/Controller/Components/Mytextformfeildborders.dart';
import 'package:whatsapp/Controller/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/arslan.jpeg'),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 190, vertical: 40),
              child: Mytext(
                text: 'E-Care',
              )),
          Center(
            child: Container(
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                color: Appcolor.lightgray.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Mytext(
                        text: "Login",
                        fontcolor: Colors.blue,
                        fontsize: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Mytextformfeildborders(
                        hinttext: 'Email',
                        prefixicon: Icons.mail,
                        textfeildcolor: Appcolor.lightgray,
                        bordercolor: Colors.white,
                        borderwidth: 2,
                        hintfontcolor: Colors.white,
                        iconcolor: Colors.red,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Mytextformfeildborders(
                          hinttext: "Password",
                          prefixicon: Icons.lock,
                          iconcolor: Colors.blueAccent),
                      SizedBox(
                        height: 10,
                      ),
                      Mybutton(
                        text: "login",
                        ontab: () {},
                        width: 350,
                        buttoncolor: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Mytext(
                            text: 'Dont have an account?',
                            fontcolor: Colors.blue,
                          ),
                          Mytext(
                            text: 'Signup',
                            fontcolor: Colors.blue,
                            fontsize: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Mytext(
                            text: 'Or login with',
                            fontcolor: Colors.black,
                            fontsize: 20,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Mybutton(
                        text: "Continue with google",
                        ontab: () {},
                        width: 200,
                        buttoncolor: Colors.white,
                        fontcolor: Colors.red,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Mybutton(
                        text: "Continue with apple",
                        ontab: () {},
                        width: 200,
                        buttoncolor: Colors.white,
                        fontcolor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
