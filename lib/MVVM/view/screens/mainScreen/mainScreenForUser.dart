
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../res/Colors/color.dart';
import '../../../res/Responive/backgroundImageWithScaffold/scaffold.dart';
import '../../../res/Responive/screenResponsive/screenRes.dart';
import '../../../res/btn/btn.dart';
import '../../../res/import/import.dart';
import '../../../res/textFieldWidget/textFieldWidget.dart';
import '../PasswordReset.dart';
import 'gotoPickup.dart';

class mainScreenForUser extends StatelessWidget {
   mainScreenForUser({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      centerTitle: true,
      elevation: 0,
      iconTheme: const IconThemeData(
          color: Color(0xFF000000)
      ),
      actions:  [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.white
          ),
          child: Text("data"),
        ),
        Gap(25),

      ],

      backgroundColor: Color(0xFFEEEEEE),
      title: const Text("Hy Wisdom", style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w800,
          color: Color(0xFF0C81EE)
      ),),
    );

    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar:appBar,
        drawer:const Drawer(
          backgroundColor:  Color(0xFFF2ACDA),
          child: navigationBar(),
        ),      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            height: (MediaQuery.of(context).size.height-appBar.preferredSize.height-MediaQuery.of(context).padding.top),
            child: Column(
              children: [
                Container(
                  height: 183,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(29)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/img_4.png", scale: 2,),
                        ],
                      ),
                      const Gap(24),
                      Text("500,000.45",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 35),),
                      const Gap(9),
                      Container(
                          width: 135,
                          height: 44,
                          decoration: BoxDecoration(
                            color: Color(0xFF034888),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.white, width: 3)
                          ),
                          child: Center(child: Text("Withdraw", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),))),
                    ],
                  ),
                ),
                const Gap(50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/img_6.png", scale: 2,),
                          const Gap(6),
                          Text("Set/Change Wallet Pin", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),)
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/img_7.png", scale: 2,),
                         const Gap(6),
                          Text("Tranaction History", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),)


                        ],
                      )

                    ],
                  ),
                ),
                const Gap(72),
                Text("Ready to Pick Up:", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                const Gap(17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 135,
                        height: 33,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text("Inside School", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.black),))),
                    Container(
                        width: 135,
                        height: 33,
                        decoration: BoxDecoration(
                          color: Color(0xFF0C81EE),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text("Outside School", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white),))),

                  ],
                ),
                Flexible(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: ListView(

                          children: [
                            Text("School park", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15, color: Colors.grey
                        ),),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ListView(

                          children: [
                            Text("Stella Maris", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15, color: Colors.grey
                        ),),
                            Text("Okeodo", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15, color: Colors.grey
                        ),),
                            Text("Chapel", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15, color: Colors.grey
                        ),),
                            Text("Mfm", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15, color: Colors.grey
                        ),),
                            Text("Sanrab", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15, color: Colors.grey
                        ),),
                            Text("Ilesanmi", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15, color: Colors.grey
                        ),),
                            Text("Mark", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15, color: Colors.grey
                        ),),
                            Text("Terminus", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15, color: Colors.grey
                        ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      Get.to(gotoPickup());
                    },
                    child: Container(
                        width: 135,
                        height: 33,
                        decoration: BoxDecoration(
                          color: Color(0xFF0C81EE),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text("Go to Pickup", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white),))),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}



class navigationBar extends StatelessWidget {
  const navigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 66.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.cancel_presentation, color:Color(0xFF730240),)),
                ],
              ),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    InkWell(
                      onTap: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context) => ABOUT(),));
                      },
                      child: Row(
                        children: const [
                          Text("About", style: TextStyle(
                              color: Color(0xFF730240),
                              fontSize: 24,
                              fontWeight: FontWeight.w700
                          ),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    InkWell(
                      onTap: () {
                      //  Navigator.push(context, MaterialPageRoute(builder: (context) => Contact(),));
                      },
                      child: Row(

                        children: const [
                          Text("Contact", style: TextStyle(
                              color: Color(0xFF730240),
                              fontSize: 24,
                              fontWeight: FontWeight.w700
                          ),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    InkWell(
                      onTap: () async {
                      },
                      child: Row(

                        children: const [
                          Text("Invite Friends", style: TextStyle(
                              color: Color(0xFF730240),
                              fontSize: 24,
                              fontWeight: FontWeight.w700
                          ),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 100.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          // Image.asset("assets/img_2.png", width: 30,height: 30,),
                          // Image.asset("assets/img_3.png", width: 30,height: 30,),
                          // Image.asset("assets/img_4.png", width: 30,height: 30,),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),

                    Row(
                      children: [
                       // btnsignup(text: "LogOut",),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}