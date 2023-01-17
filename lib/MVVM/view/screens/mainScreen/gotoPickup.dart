
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_go_app/MVVM/view/screens/Enter%20OTP.dart';

import '../../../res/Colors/color.dart';
import '../../../res/Responive/backgroundImageWithScaffold/scaffold.dart';
import '../../../res/Responive/screenResponsive/screenRes.dart';
import '../../../res/btn/btn.dart';
import '../../../res/import/import.dart';
import '../PasswordReset.dart';
import '../withdraw/Withdraw.dart';
import 'SUCCESSFUL .dart';

class gotoPickup extends StatelessWidget {
   gotoPickup({Key? key}) : super(key: key);

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
                child: StatefulBuilder(
                  builder: (context, setState) {
                    return  GridView(

                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                          crossAxisSpacing: 70
                      ),
                      children: [
                        selectedBox(text: 'Stella Maris', onTap: () {
                          setState((){
                            changeColor?changeColor=false:changeColor=true;
                          });
                          print("enter");
                        }, color:changeColor?blueT:greyT,),
                        selectedBox(text: 'OKEODO', onTap: () {
                          changeColor?changeColor=false:changeColor=true;

                        }, color: greyT,),
                        selectedBox(text: 'MFM', onTap: () {  }, color: greyT,),
                        selectedBox(text: 'Chapel', onTap: () {  }, color: greyT,),
                        selectedBox(text: 'sanrab', onTap: () {  }, color: greyT,),
                        selectedBox(text: 'sanrab', onTap: () {  }, color: greyT,),
                        selectedBox(text: 'TERMINUS', onTap: () {  }, color: greyT,),
                        selectedBox(text: 'mARK', onTap: () {  }, color: greyT,),
                        selectedBox(text: 'IFESANMI', onTap: () {
                          Get.to(Withdraw());
                        }, color: greyT,),
                        selectedBox(text: 'SCHOOL PARK', onTap: () {
                          Get.to(SUCCESSFUL());
                        }, color: greyT,),
                      ],
                    );
                  },
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
