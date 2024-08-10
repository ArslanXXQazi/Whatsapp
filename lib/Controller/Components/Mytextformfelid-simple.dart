import 'package:flutter/material.dart';

class Mytextformfelidsuffixicon extends StatelessWidget {
  String hinttext;
  Widget suffixicon;

  Mytextformfelidsuffixicon({super.key,
    required this.hinttext,
    required this.suffixicon,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hinttext,
          suffixIcon: suffixicon,
        ),
      ),
    );
  }
}