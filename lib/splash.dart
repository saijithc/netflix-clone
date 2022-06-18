import 'package:flutter/material.dart';
import 'package:netflix/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    gotohome(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(height: double.infinity,width: double.infinity,decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/netflix.webp'),fit: BoxFit.fitWidth,)),);
  }
}
Future<void> gotohome(BuildContext context) async {
  await Future.delayed(const Duration(seconds: 2));
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (ctx) =>  Home()));
}
