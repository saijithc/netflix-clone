import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:netflix/bottom.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
  
    super.initState();
  }
  @override
  AnimatedSplashScreen build(BuildContext context) {
    return  AnimatedSplashScreen(backgroundColor: Colors.black,
      splash:  Scaffold(backgroundColor: Colors.black,
      body: Container(
        height:MediaQuery.of(context).size.height*1,width: double.infinity,decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/splash.png'),
        fit: BoxFit.cover, 
        filterQuality: FilterQuality.high),
   ),),
    ), nextScreen: const Bottom(),);
  }
}

