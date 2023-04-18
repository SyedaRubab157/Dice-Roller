import 'package:flutter/material.dart';
import 'dice_container.dart';
class HomePage extends StatelessWidget {
   const HomePage({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(
                    begin: Alignment.topLeft,end: Alignment.bottomRight,
                    colors: [Colors.deepOrange, Colors.orange])),
        child:const  Column(mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              DiceContainer(),
        ]),
      ),
    );
  }
}
