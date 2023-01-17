import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_go_app/MVVM/view/screens/signUp.dart';

import '../../res/Colors/color.dart';
import '../../res/Responive/backgroundImageWithScaffold/scaffold.dart';
import '../../res/Responive/screenResponsive/screenRes.dart';
import '../../res/btn/btn.dart';
import '../../res/textFieldWidget/textFieldWidget.dart';
import 'Createanewpassword.dart';

class Enterotp extends StatelessWidget {
   Enterotp({Key? key}) : super(key: key);

  final TextEditingController _FirstName = TextEditingController();
  final TextEditingController _LastName = TextEditingController();
  final TextEditingController _PhoneNumber = TextEditingController();
  final TextEditingController _EmailAddress = TextEditingController();
  final TextEditingController _Password = TextEditingController();
  TextEditingController ConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return screenResponisive(
      scaffold: SafeArea(
        child: Scaffold(
          body: BackgroundWithScaffold(
            columu: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(
                  children: [
                    const SizedBox(height: 90,),
                    Text("Enter OTP", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 27,
                      color: textMain,
                    ),),
                    const SizedBox(height: 16,),
                    Text("Add your details to Signup", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: SecondMain,
                    ),),
                    const SizedBox(height: 23,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        enterOTPBox(),
                        enterOTPBox(),
                        enterOTPBox(),
                        enterOTPBox(),
                      ],
                    ),
                    const SizedBox(height: 26,),

                    TextinAll(
                      text: "Resend Code?",
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(height: 26,),
                    BtnUser(
                      text: "Continue",
                      onTap: () {
                        Get.to(Createanewpassword());
                      },
                    ),
                    const SizedBox(height: 26,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );  }
}

class enterOTPBox extends StatelessWidget {
  const enterOTPBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 76,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xFF034888))
      ),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
