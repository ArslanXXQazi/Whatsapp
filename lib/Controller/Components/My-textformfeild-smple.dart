import 'package:flutter/material.dart';

class Mytextformfrildsimple extends StatelessWidget {
  String hinttext;

  Mytextformfrildsimple({super.key,
    this.hinttext=''
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hinttext,
        ),
      ),
    );
  }
}
