import 'dart:math';

import 'package:flutter/material.dart';

class DiceContainer extends StatefulWidget {
  const DiceContainer({Key? key}) : super(key: key);
  @override
  State<DiceContainer> createState() => _DiceContainerState();
}

class _DiceContainerState extends State<DiceContainer> {
  var  value=2;
  @override
  Widget build(BuildContext context) {
    return  InkWell(borderRadius: BorderRadius.circular(20),

      onTap: (){
        setState(() {
          value=Random().nextInt(6)+1;
        });
      },
      child: Container(
          decoration: BoxDecoration(image: DecorationImage(
              image: AssetImage('assets/images/dice-six-faces-$value.png'
              )),
              borderRadius: BorderRadius.circular(10)),
          width: 100,height: 100,
          // child: Image.asset('assets/images/dice-six-faces-$value.png',),
      ),
    );

  }
}
