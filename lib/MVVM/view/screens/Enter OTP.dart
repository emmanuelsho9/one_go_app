import 'package:flutter/material.dart';
import 'package:one_go_app/MVVM/view/screens/signUp.dart';

import '../../res/Colors/color.dart';
import '../../res/Responive/backgroundImageWithScaffold/scaffold.dart';
import '../../res/Responive/screenResponsive/screenRes.dart';
import '../../res/btn/btn.dart';
import '../../res/textFieldWidget/textFieldWidget.dart';

class Enterotp extends StatelessWidget {
   Enterotp({Key? key}) : super(key: key);

  TextEditingController _FirstName = TextEditingController();
  TextEditingController _LastName = TextEditingController();
  TextEditingController _PhoneNumber = TextEditingController();
  TextEditingController _EmailAddress = TextEditingController();
  TextEditingController _Password = TextEditingController();
  TextEditingController ConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return screenResponisive(
      scaffold: SafeArea(
        child: Scaffold(
          body: BackgroundWithScaffold(
            columu: SingleChildScrollView(
              child: Container(
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
                    TextInputField(
                      labelText: 'First Name',
                      controller: _FirstName,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Last Name',
                      controller: _LastName,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Phone Number',
                      keyboardType: TextInputType.number,
                      controller: _PhoneNumber,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Email Address',
                      controller: _EmailAddress,
                      keyboardType: TextInputType.emailAddress,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Password',
                      obscured: true,
                      controller: _Password,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Confirm Password',
                      controller: ConfirmPassword,
                      obscured: true,
                      colorBorderFocus: const Color(0xffFFFFFF),
                      colorBorderInput: const Color(0xffFFFFFF),
                      colorBorder:const Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 26,),
                    BtnUser(
                      text: "Continue",
                    ),
                    const SizedBox(height: 26,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextinAll(
                          text: "Already have an Account?    ",
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                        TextinAll(
                          text: "Login",
                          color:  Color(0xFF034888),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );  }
}