import 'package:flutter/material.dart';

class ButtonTemplet extends StatelessWidget {
   const ButtonTemplet({super.key, this.bgColor, this.containerWidth, this.itext});

  final   Color? bgColor;
  final   double? containerWidth ;
  final   String? itext;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerWidth,
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(itext!,
        style: const TextStyle(color: Color(0xfffaf7f0), fontSize: 22,),
        ),
      ),
    );
  }
}
