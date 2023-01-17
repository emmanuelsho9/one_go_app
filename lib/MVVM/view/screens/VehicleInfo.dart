import 'package:flutter/material.dart';
import 'package:one_go_app/MVVM/view/screens/signUp.dart';

import '../../res/Colors/color.dart';
import '../../res/Responive/backgroundImageWithScaffold/scaffold.dart';
import '../../res/Responive/screenResponsive/screenRes.dart';
import '../../res/btn/btn.dart';
import '../../res/textFieldWidget/textFieldWidget.dart';

class VehicleInfo extends StatelessWidget {
   VehicleInfo({Key? key}) : super(key: key);

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

                child: Column(
                  children: [
                    const SizedBox(height: 90,),
                    Text("Vehicle Info", style: TextStyle(
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
                      labelText: 'Vehicle Color',
                      controller: _FirstName,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Vehicle Model',
                      controller: _LastName,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Phone Number',
                      keyboardType: TextInputType.number,
                      controller: _PhoneNumber,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Driver Liscence',
                      controller: _EmailAddress,
                      keyboardType: TextInputType.emailAddress,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Vehicle Capacity ',
                      obscured: true,
                      controller: _Password,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 26,),
                    BtnUser(
                      text: "Continue",
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
