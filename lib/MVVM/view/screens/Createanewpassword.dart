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

class Createanewpassword extends StatelessWidget {
   Createanewpassword({Key? key}) : super(key: key);

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
                    Text("Create a new password", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 27,
                      color: textMain,
                    ),),
                    const SizedBox(height: 16,),
                    TextInputField(
                      obscured: true,
                      labelText: 'New password',
                      keyboardType: TextInputType.visiblePassword,
                      controller: _PhoneNumber,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 16,),
                    TextInputField(
                      obscured: true,
                      labelText: 'Confirm Password',
                      keyboardType: TextInputType.visiblePassword,
                      controller: _PhoneNumber,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 23,),
                    BtnUser(
                      text: "Login",
                      onTap: () {
                       // Get.to(Enterotp());
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
    );
  }
}

