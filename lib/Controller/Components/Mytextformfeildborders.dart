import 'package:flutter/material.dart';
import 'package:whatsapp/Controller/constants/colors.dart';

class Mytextformfeildborders extends StatelessWidget {
  String hinttext;
  IconData prefixicon;
  Color  textfeildcolor;
  Color  bordercolor;
  Color  iconcolor;
  Color  hintfontcolor;
  double borderwidth;
  double bordercircular;

  Mytextformfeildborders({super.key,
    required this.hinttext,
    required this.prefixicon,
    this.textfeildcolor=Colors.white,
    this.bordercolor=Colors.grey,
    this.borderwidth=1,
    this.bordercircular=10,
    this.iconcolor=Colors.blue,
    this.hintfontcolor=Colors.grey

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: textfeildcolor,
        borderRadius: BorderRadius.circular(bordercircular),
        border: Border.all(width: borderwidth,color: bordercolor)
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(
            color: hintfontcolor,
          ),
          prefixIcon: Icon(prefixicon,color: iconcolor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}