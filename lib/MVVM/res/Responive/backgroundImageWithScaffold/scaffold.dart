


import '../../import/import.dart';

class BackgroundWithScaffold extends StatelessWidget {
   BackgroundWithScaffold({
    required this.columu,
    Key? key,
  }) ;

  Widget columu;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img_2.png"), fit: BoxFit.cover,
            ),),),
        columu
      ],
    );
  }
}




class BacgroundOnboarding extends StatelessWidget {
   BacgroundOnboarding({Key? key, required this.columu});

  Widget columu;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img_5.png"), fit: BoxFit.cover,
            ),),),
        columu
      ],
    );
  }
}

