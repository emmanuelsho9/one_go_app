import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_go_app/MVVM/view/screens/signUp.dart';

import '../../res/Colors/color.dart';
import '../../res/Responive/backgroundImageWithScaffold/scaffold.dart';
import '../../res/Responive/screenResponsive/screenRes.dart';
import '../../res/btn/btn.dart';
import '../../res/import/import.dart';
import '../../res/textFieldWidget/textFieldWidget.dart';
import 'Enter OTP.dart';

class PasswordReset extends StatelessWidget {
   PasswordReset({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 200,),
                    Text("Password Reset", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 27,
                      color: textMain,
                    ),),
                    const SizedBox(height: 16,),
                    TextInputField(
                      labelText: 'Enter mobile number',
                      keyboardType: TextInputType.phone,
                      controller: _PhoneNumber,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 23,),
                    BtnUser(
                      text: "Continue",
                      onTap: () {
                        Get.to(Enterotp());
                      },
                    ),
                    const SizedBox(height: 26,),
                    InkWell(
                      onTap: () {
                        Get.to(SignUp());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextinAll(
                            text: "Don’t have an Account?    ",
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                          TextinAll(
                            text: "SignUp",
                            color:  Color(0xFF034888),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextinAll extends StatelessWidget {
   TextinAll({
    Key? key,
     required this.text,
     this.color,
     this.fontWeight,
     this.fontSize
  }) : super(key: key);

  String text;
  double? fontSize;
  Color? color;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight
    ),);
  }
}
