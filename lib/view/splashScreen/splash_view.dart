import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pizzato/view/homeScreen/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({ Key? key }) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {


  @override
  void initState() {

  Timer(
    Duration(seconds: 3),() => Navigator.pushReplacement(context, PageTransition(child: HomeView(), type:PageTransitionType.leftToRightWithFade ))
  );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
          SizedBox(
          height: 200.0,
          width: 400.0,
          child: Lottie.asset('animations/pizza_slice.json'),
          ),

          RichText(
            text: const TextSpan(
              text: "PIZ",
              style: TextStyle(fontSize: 56 , fontWeight: FontWeight.bold , color: Colors.black),
              children: <TextSpan>[

                TextSpan(
              text: "Z",
              style: TextStyle(fontSize: 56 , fontWeight: FontWeight.bold , color: Colors.red),),
                TextSpan(
              text: "A",
              style: TextStyle(fontSize: 56 , fontWeight: FontWeight.bold , color: Colors.black),),
              TextSpan(
              text: "T",
              style: TextStyle(fontSize: 56 , fontWeight: FontWeight.bold , color: Colors.red),),
              TextSpan(
              text: "O",
              style: TextStyle(fontSize: 56 , fontWeight: FontWeight.bold , color: Colors.black),)
              
              
              ]
            ),

            
            


            
            
            )


          ],
        ),
      ),
    );
  }
}