import 'package:one_go_app/MVVM/view/screens/signUp.dart';

import '../../res/Responive/backgroundImageWithScaffold/scaffold.dart';
import '../../res/Responive/screenResponsive/screenRes.dart';
import '../../res/btn/btn.dart';
import '../../res/import/import.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return screenResponisive(
      scaffold: SafeArea(
        child: Scaffold(
          body: BacgroundOnboarding(
            columu: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(height: 274,),
                    Image.asset("assets/img_3.png", width: 220, height: 286,),
                    const SizedBox(height: 70,),
                    BtnUser(
                      text: "Login",
                    ),
                    const SizedBox(height: 50,),
                    BtnUser(
                      text: "Signup",
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                      },
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
