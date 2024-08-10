import 'package:flutter/material.dart';

class Mytextformfelidprefixicon extends StatelessWidget {
  String hinttext;
  Widget prefixicon;

  Mytextformfelidprefixicon({super.key,
    required this.hinttext,
    required this.prefixicon,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hinttext,
          prefixIcon: prefixicon,
        ),
      ),
    );
  }
}