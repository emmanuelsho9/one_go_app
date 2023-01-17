
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_go_app/MVVM/view/screens/Enter%20OTP.dart';

import '../../../res/Colors/color.dart';
import '../../../res/Responive/backgroundImageWithScaffold/scaffold.dart';
import '../../../res/Responive/screenResponsive/screenRes.dart';
import '../../../res/btn/btn.dart';
import '../../../res/import/import.dart';
import '../PasswordReset.dart';

class SUCCESSFUL extends StatelessWidget {
   SUCCESSFUL({Key? key}) : super(key: key);

  final TextEditingController _FirstName = TextEditingController();
  final TextEditingController _LastName = TextEditingController();
  final TextEditingController _PhoneNumber = TextEditingController();
  final TextEditingController _EmailAddress = TextEditingController();
  final TextEditingController _Password = TextEditingController();
  TextEditingController ConfirmPassword = TextEditingController();
  var blueT =Colors.lightBlue.withOpacity(0.3);
  var greyT =Colors.grey.withOpacity(0.3);
  bool changeColor=true;



  @override
  Widget build(BuildContext context) {
    return screenResponisive(
      scaffold: SafeArea(
        child: Scaffold(
          body: BackgroundWithScaffold(
            columu: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.fromLTRB(16, 40, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/img_8.png", width: 108, height: 108,),
                    const Gap(19),
                    const Text("SUCCESSFUL", style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700
                    ),),
                    const Gap(75),
                    BtnUser(
                      text: "Finish",
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );  }
}

class selectedBox extends StatelessWidget {
   selectedBox({
    Key? key, required this.text, required this.onTap, required this.color
  }) : super(key: key);

  String text;
  Function()? onTap;
   Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 76,
            width: 132,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12)
            ),
          ),
        ),
         Text(text.toUpperCase(), style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w600
        ),),

      ],
    );
  }
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
