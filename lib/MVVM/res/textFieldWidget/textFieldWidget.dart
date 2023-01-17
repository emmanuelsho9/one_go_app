
import '../Responive/backgroundImageWithScaffold/scaffold.dart';
import '../import/import.dart';

class TextInputField extends StatelessWidget {
  String labelText;
  bool obscured ;
  TextEditingController controller;
  IconData? icon;
  TextInputType? keyboardType;
  void Function()? onPressed;
  Color colorBorder = const Color(0xffFFFFFF);
  Color colorBorderInput = const Color(0xffFFFFFF);
  Color colorBorderFocus = const Color(0xffFFFFFF);
  Color? colorBox=const Color(0xffFFFFFF);



  TextInputField({Key? key,
    required this.labelText,
    required this.controller,
    required this.colorBorderFocus,
     this.icon,
    required this.colorBorderInput,
    this.colorBox,
    this.onPressed,
    required this.colorBorder,
    this.keyboardType,
    this.obscured = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 42, right: 39),
      child: Container(
        height: 59,
        width: 378,
        decoration: BoxDecoration(
            color: colorBox
        ),
        child: TextFormField(
          cursorColor: const Color.fromARGB(128, 255, 255, 255),
          obscureText: obscured,
          controller: controller,
          keyboardType: keyboardType,
          inputFormatters: [
          ],
          style: const TextStyle(
              color: Colors.black
          ),

          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,

            suffixIcon: IconButton(onPressed: onPressed , icon: Icon(icon, color: Colors.black,)),
            labelText: labelText,
            border: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: colorBorderInput
                )
            ),

            labelStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16
            ),
            enabledBorder: OutlineInputBorder(

                borderRadius: BorderRadius.circular(24),
                borderSide:  BorderSide(
                  color: colorBorder,

                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide:  BorderSide(
                  color: colorBorderFocus,

                )
            ),
          ),
        ),
      ),
    );
  }
}
