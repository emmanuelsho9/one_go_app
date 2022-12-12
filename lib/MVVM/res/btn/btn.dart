import 'package:flutter/material.dart';

class BtnUser extends StatelessWidget {
  String? text;
  void Function()? onTap;
  BtnUser({Key? key, required this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 42, right: 39),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 59,
          width: 378,
          decoration:  BoxDecoration(
              color: const Color(0xFF0C81EE),
              borderRadius: BorderRadius.circular(50)
          ),
          child:  Center(
            child: Text( text!, style: const TextStyle(
                color: Colors.white,
                fontSize: 20
            ),),
          ),
        ),
      ),
    );
  }
}