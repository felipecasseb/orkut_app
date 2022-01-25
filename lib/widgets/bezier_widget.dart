import 'package:flutter/material.dart';
import 'package:orkut_app/clip_home.dart';

class  BezierWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ClipPath(
      clipper: ClipHome(),
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 50),
        color: Color.fromRGBO(237, 37, 144, 0.2),
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height/3,
        child: Image.asset("images/logo.png"),
      ),
    );
  }
}

