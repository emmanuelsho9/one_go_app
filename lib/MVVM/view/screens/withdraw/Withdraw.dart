
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../res/Colors/color.dart';
import '../../../res/Responive/backgroundImageWithScaffold/scaffold.dart';
import '../../../res/Responive/screenResponsive/screenRes.dart';
import '../../../res/btn/btn.dart';
import '../../../res/import/import.dart';
import '../../../res/textFieldWidget/textFieldWidget.dart';
import 'Pin Reset.dart';

class Withdraw extends StatelessWidget {
   Withdraw({Key? key}) : super(key: key);

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
                    Text("Withdraw", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 27,
                      color: textMain,
                    ),),
                    const SizedBox(height: 16,),
                    TextInputField(
                      labelText: 'Account Number',
                      controller: _FirstName,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Bank Name',
                      controller: _LastName,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Account Name',
                      keyboardType: TextInputType.number,
                      controller: _PhoneNumber,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Amount',
                      controller: _EmailAddress,
                      keyboardType: TextInputType.emailAddress,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 26,),
                    TextInputField(
                      labelText: 'Pin',
                      obscured: true,
                      controller: _Password,
                      colorBorderFocus: Color(0xffFFFFFF),
                      colorBorderInput: Color(0xffFFFFFF),
                      colorBorder:Color(0xffFFFFFF),

                    ),
                    const SizedBox(height: 14,),

                    InkWell(
                      onTap: () {
                        Get.to(PinReset());

                      },
                      child: Text("Forgot your pin?", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: textMain,
                      ),),
                    ),

                    const SizedBox(height: 14,),
                    InkWell(
                      onTap: () {
                      },
                      child: BtnUser(
                        text: "Withdraw",
                      ),
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
