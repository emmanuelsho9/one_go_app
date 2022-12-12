
import '../../import/import.dart';

class screenResponisive extends StatelessWidget {
  screenResponisive({
    required this.scaffold,
    Key? key,
  });

  Widget scaffold;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return scaffold;
      },);
  }
}
